
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int av_len; char* av_val; } ;
typedef TYPE_1__ AVal ;



__attribute__((used)) static char *AValChr(AVal *av, char c)
{
    int i;
    for (i = 0; i < av->av_len; i++)
    {
        if (av->av_val[i] == c)
            return &av->av_val[i];
    }
    return ((void*)0);
}
