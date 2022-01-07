
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; } ;
typedef TYPE_1__ AVInputFormat ;


 int MP_TARRAY_APPEND (int *,char**,int,int *) ;
 TYPE_1__* av_demuxer_iterate (void**) ;
 int * talloc_strdup (int *,int ) ;

char **mp_get_lavf_demuxers(void)
{
    char **list = ((void*)0);
    void *iter = ((void*)0);
    int num = 0;
    for (;;) {
        const AVInputFormat *cur = av_demuxer_iterate(&iter);
        if (!cur)
            break;
        MP_TARRAY_APPEND(((void*)0), list, num, talloc_strdup(((void*)0), cur->name));
    }
    MP_TARRAY_APPEND(((void*)0), list, num, ((void*)0));
    return list;
}
