
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_tags {int num_keys; void** values; void** keys; } ;


 int MP_RESIZE_ARRAY (struct mp_tags*,void**,int) ;
 int mp_tags_clear (struct mp_tags*) ;
 void* talloc_strdup (struct mp_tags*,void*) ;

void mp_tags_replace(struct mp_tags *dst, struct mp_tags *src)
{
    mp_tags_clear(dst);
    MP_RESIZE_ARRAY(dst, dst->keys, src->num_keys);
    MP_RESIZE_ARRAY(dst, dst->values, src->num_keys);
    dst->num_keys = src->num_keys;
    for (int n = 0; n < src->num_keys; n++) {
        dst->keys[n] = talloc_strdup(dst, src->keys[n]);
        dst->values[n] = talloc_strdup(dst, src->values[n]);
    }
}
