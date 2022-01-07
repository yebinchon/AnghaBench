
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_tags {int num_keys; int * values; int * keys; } ;
typedef int bstr ;


 int MP_TARRAY_REMOVE_AT (int *,int,int) ;
 scalar_t__ bstrcasecmp0 (int ,int ) ;
 int talloc_free (int ) ;

void mp_tags_remove_bstr(struct mp_tags *tags, bstr key)
{
    for (int n = 0; n < tags->num_keys; n++) {
        if (bstrcasecmp0(key, tags->keys[n]) == 0) {
            talloc_free(tags->keys[n]);
            talloc_free(tags->values[n]);
            int num_keys = tags->num_keys;
            MP_TARRAY_REMOVE_AT(tags->keys, num_keys, n);
            MP_TARRAY_REMOVE_AT(tags->values, tags->num_keys, n);
        }
    }
}
