
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_tags {int num_keys; int * values; int * keys; } ;


 int mp_tags_set_str (struct mp_tags*,int ,int ) ;

void mp_tags_merge(struct mp_tags *tags, struct mp_tags *src)
{
    for (int n = 0; n < src->num_keys; n++)
        mp_tags_set_str(tags, src->keys[n], src->values[n]);
}
