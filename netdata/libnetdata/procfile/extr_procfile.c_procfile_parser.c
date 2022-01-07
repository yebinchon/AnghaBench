
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* data; size_t len; size_t size; scalar_t__* separators; } ;
typedef TYPE_1__ procfile ;
typedef scalar_t__ PF_CHAR_TYPE ;


 scalar_t__ PF_CHAR_IS_CLOSE ;
 scalar_t__ PF_CHAR_IS_NEWLINE ;
 scalar_t__ PF_CHAR_IS_OPEN ;
 scalar_t__ PF_CHAR_IS_QUOTE ;
 scalar_t__ PF_CHAR_IS_SEPARATOR ;
 scalar_t__ PF_CHAR_IS_WORD ;
 int fatal (char*) ;
 scalar_t__ likely (int) ;
 size_t* pflines_add (TYPE_1__*) ;
 int pfwords_add (TYPE_1__*,char*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void procfile_parser(procfile *ff) {


    char *s = ff->data
        , *e = &ff->data[ff->len]
        , *t = ff->data;


    PF_CHAR_TYPE *separators = ff->separators;

    char quote = 0;
    size_t opened = 0;

    size_t *line_words = pflines_add(ff);

    while(s < e) {
        PF_CHAR_TYPE ct = separators[(unsigned char)(*s)];



        if(likely(ct == PF_CHAR_IS_WORD)) {
            s++;
        }
        else if(likely(ct == PF_CHAR_IS_SEPARATOR)) {
            if(!quote && !opened) {
                if (s != t) {

                    *s = '\0';
                    pfwords_add(ff, t);
                    (*line_words)++;
                    t = ++s;
                }
                else {


                    t = ++s;
                }
            }
            else {

                s++;
            }
        }
        else if(likely(ct == PF_CHAR_IS_NEWLINE)) {


            *s = '\0';
            pfwords_add(ff, t);
            (*line_words)++;
            t = ++s;



            line_words = pflines_add(ff);
        }
        else if(likely(ct == PF_CHAR_IS_QUOTE)) {
            if(unlikely(!quote && s == t)) {

                quote = *s;
                t = ++s;
            }
            else if(unlikely(quote && quote == *s)) {

                quote = 0;

                *s = '\0';
                pfwords_add(ff, t);
                (*line_words)++;
                t = ++s;
            }
            else
                s++;
        }
        else if(likely(ct == PF_CHAR_IS_OPEN)) {
            if(s == t) {
                opened++;
                t = ++s;
            }
            else if(opened) {
                opened++;
                s++;
            }
            else
                s++;
        }
        else if(likely(ct == PF_CHAR_IS_CLOSE)) {
            if(opened) {
                opened--;

                if(!opened) {
                    *s = '\0';
                    pfwords_add(ff, t);
                    (*line_words)++;
                    t = ++s;
                }
                else
                    s++;
            }
            else
                s++;
        }
        else
            fatal("Internal Error: procfile_readall() does not handle all the cases.");
    }

    if(likely(s > t && t < e)) {

        if(unlikely(ff->len >= ff->size)) {

            s = &ff->data[ff->size - 1];
        }

        *s = '\0';
        pfwords_add(ff, t);
        (*line_words)++;

    }
}
