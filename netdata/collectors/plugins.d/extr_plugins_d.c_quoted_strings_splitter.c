
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ likely (int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int quoted_strings_splitter(char *str, char **words, int max_words, int (*custom_isspace)(char)) {
    char *s = str, quote = 0;
    int i = 0, j;


    while(unlikely(custom_isspace(*s))) s++;


    if(unlikely(*s == '\'' || *s == '"')) {
        quote = *s;
        s++;
    }


    words[i++] = s;


    while(likely(*s)) {

        if(unlikely(*s == '\\' && s[1])) {
            s += 2;
            continue;
        }


        else if(unlikely(*s == quote)) {
            quote = 0;
            *s = ' ';
            continue;
        }


        else if(unlikely(quote == 0 && custom_isspace(*s))) {


            *s++ = '\0';


            while(likely(custom_isspace(*s))) s++;


            if(unlikely(*s == '\'' || *s == '"')) {
                quote = *s;
                s++;
            }


            if(unlikely(!*s)) break;


            if(likely(i < max_words)) words[i++] = s;
            else break;
        }


        else s++;
    }


    j = i;
    while(likely(j < max_words)) words[j++] = ((void*)0);

    return i;
}
