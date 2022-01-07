
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct mp_log {int dummy; } ;
struct TYPE_4__ {int value; int key; } ;
typedef TYPE_1__ AVDictionaryEntry ;
typedef int AVDictionary ;


 int AV_DICT_IGNORE_SUFFIX ;
 TYPE_1__* av_dict_get (int *,char*,TYPE_1__*,int ) ;
 int mp_msg (struct mp_log*,int,char*,int ,int ) ;

void mp_avdict_print_unset(struct mp_log *log, int msgl, AVDictionary *dict)
{
    AVDictionaryEntry *t = ((void*)0);
    while ((t = av_dict_get(dict, "", t, AV_DICT_IGNORE_SUFFIX)))
        mp_msg(log, msgl, "Could not set AVOption %s='%s'\n", t->key, t->value);
}
