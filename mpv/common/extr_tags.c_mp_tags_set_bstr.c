
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_tags {int num_keys; void** values; void** keys; } ;
typedef int bstr ;


 int MP_RESIZE_ARRAY (struct mp_tags*,void**,int) ;
 scalar_t__ bstrcasecmp0 (int ,void*) ;
 void* bstrto0 (struct mp_tags*,int ) ;
 int talloc_free (void*) ;

void mp_tags_set_bstr(struct mp_tags *tags, bstr key, bstr value)
{
    for (int n = 0; n < tags->num_keys; n++) {
        if (bstrcasecmp0(key, tags->keys[n]) == 0) {
            talloc_free(tags->values[n]);
            tags->values[n] = bstrto0(tags, value);
            return;
        }
    }

    MP_RESIZE_ARRAY(tags, tags->keys, tags->num_keys + 1);
    MP_RESIZE_ARRAY(tags, tags->values, tags->num_keys + 1);
    tags->keys[tags->num_keys] = bstrto0(tags, key);
    tags->values[tags->num_keys] = bstrto0(tags, value);
    tags->num_keys++;
}
