
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * separators; } ;
typedef TYPE_1__ procfile ;
typedef int PF_CHAR_TYPE ;


 int PF_CHAR_IS_NEWLINE ;
 int PF_CHAR_IS_SEPARATOR ;
 int PF_CHAR_IS_WORD ;
 int isprint (int) ;
 scalar_t__ isspace (int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void procfile_set_separators(procfile *ff, const char *separators) {
    static PF_CHAR_TYPE def[256];
    static char initilized = 0;

    if(unlikely(!initilized)) {



        int i = 256;
        while(i--) {
            if(unlikely(i == '\n' || i == '\r'))
                def[i] = PF_CHAR_IS_NEWLINE;

            else if(unlikely(isspace(i) || !isprint(i)))
                def[i] = PF_CHAR_IS_SEPARATOR;

            else
                def[i] = PF_CHAR_IS_WORD;
        }

        initilized = 1;
    }


    PF_CHAR_TYPE *ffs = ff->separators, *ffd = def, *ffe = &def[256];
    while(ffd != ffe)
        *ffs++ = *ffd++;


    if(unlikely(!separators))
        separators = " \t=|";

    ffs = ff->separators;
    const char *s = separators;
    while(*s)
        ffs[(int)*s++] = PF_CHAR_IS_SEPARATOR;
}
