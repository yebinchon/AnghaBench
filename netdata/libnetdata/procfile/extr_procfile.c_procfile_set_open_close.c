
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* separators; } ;
typedef TYPE_1__ procfile ;
typedef scalar_t__ PF_CHAR_TYPE ;


 scalar_t__ PF_CHAR_IS_CLOSE ;
 scalar_t__ PF_CHAR_IS_OPEN ;
 scalar_t__ PF_CHAR_IS_WORD ;
 scalar_t__ unlikely (int) ;

void procfile_set_open_close(procfile *ff, const char *open, const char *close) {
    PF_CHAR_TYPE *ffs = ff->separators;


    int i = 256;
    while(i--)
        if(unlikely(ffs[i] == PF_CHAR_IS_OPEN || ffs[i] == PF_CHAR_IS_CLOSE))
            ffs[i] = PF_CHAR_IS_WORD;


    if(unlikely(!open || !*open || !close || !*close))
        return;


    const char *s = open;
    while(*s)
        ffs[(int)*s++] = PF_CHAR_IS_OPEN;


    s = close;
    while(*s)
        ffs[(int)*s++] = PF_CHAR_IS_CLOSE;
}
