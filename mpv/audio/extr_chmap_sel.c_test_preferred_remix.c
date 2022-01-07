
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_chmap {int dummy; } ;


 int MP_ARRAY_SIZE (int **) ;
 scalar_t__ mp_chmap_equals_reordered (struct mp_chmap*,int *) ;
 int mp_chmap_remove_na (struct mp_chmap*) ;
 int ** preferred_remix ;

__attribute__((used)) static bool test_preferred_remix(const struct mp_chmap *src,
                                 const struct mp_chmap *dst)
{
    struct mp_chmap src_p = *src, dst_p = *dst;
    mp_chmap_remove_na(&src_p);
    mp_chmap_remove_na(&dst_p);
    for (int n = 0; n < MP_ARRAY_SIZE(preferred_remix); n++) {
        if (mp_chmap_equals_reordered(&src_p, &preferred_remix[n][0]) &&
            mp_chmap_equals_reordered(&dst_p, &preferred_remix[n][1]))
            return 1;
    }
    return 0;
}
