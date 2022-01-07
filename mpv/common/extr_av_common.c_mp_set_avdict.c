
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVDictionary ;


 int av_dict_set (int **,char*,char*,int ) ;

void mp_set_avdict(AVDictionary **dict, char **kv)
{
    for (int n = 0; kv && kv[n * 2]; n++)
        av_dict_set(dict, kv[n * 2 + 0], kv[n * 2 + 1], 0);
}
