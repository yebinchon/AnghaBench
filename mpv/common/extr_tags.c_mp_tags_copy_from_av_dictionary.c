
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct mp_tags {int dummy; } ;
struct AVDictionary {int dummy; } ;
struct TYPE_4__ {int value; int key; } ;
typedef TYPE_1__ AVDictionaryEntry ;


 int AV_DICT_IGNORE_SUFFIX ;
 TYPE_1__* av_dict_get (struct AVDictionary*,char*,TYPE_1__*,int ) ;
 int mp_tags_set_str (struct mp_tags*,int ,int ) ;

void mp_tags_copy_from_av_dictionary(struct mp_tags *tags,
                                     struct AVDictionary *av_dict)
{
    AVDictionaryEntry *entry = ((void*)0);
    while ((entry = av_dict_get(av_dict, "", entry, AV_DICT_IGNORE_SUFFIX)))
        mp_tags_set_str(tags, entry->key, entry->value);
}
