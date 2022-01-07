
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char** protocols; } ;
typedef TYPE_1__ stream_info_t ;


 int MP_TARRAY_APPEND (int *,char**,int,int *) ;
 TYPE_1__** stream_list ;
 int * talloc_strdup (int *,char*) ;

char **stream_get_proto_list(void)
{
    char **list = ((void*)0);
    int num = 0;
    for (int i = 0; stream_list[i]; i++) {
        const stream_info_t *stream_info = stream_list[i];

        if (!stream_info->protocols)
            continue;

        for (int j = 0; stream_info->protocols[j]; j++) {
            if (*stream_info->protocols[j] == '\0')
               continue;

            MP_TARRAY_APPEND(((void*)0), list, num,
                                talloc_strdup(((void*)0), stream_info->protocols[j]));
        }
    }
    MP_TARRAY_APPEND(((void*)0), list, num, ((void*)0));
    return list;
}
