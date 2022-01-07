
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ av_len; int * av_val; } ;
struct TYPE_5__ {scalar_t__ num; TYPE_1__ name; } ;
typedef TYPE_2__ RTMP_METHOD ;


 int free (int *) ;

__attribute__((used)) static void
AV_erase(RTMP_METHOD *vals, int *num, int i, int freeit)
{
    if (freeit)
        free(vals[i].name.av_val);
    (*num)--;
    for (; i < *num; i++)
    {
        vals[i] = vals[i + 1];
    }
    vals[i].name.av_val = ((void*)0);
    vals[i].name.av_len = 0;
    vals[i].num = 0;
}
