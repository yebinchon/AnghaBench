
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct mp_chmap {int dummy; } ;


 int mp_chmap_is_lavc (struct mp_chmap const*) ;
 int mp_chmap_to_lavc_unchecked (struct mp_chmap const*) ;

uint64_t mp_chmap_to_lavc(const struct mp_chmap *src)
{
    if (!mp_chmap_is_lavc(src))
        return 0;
    return mp_chmap_to_lavc_unchecked(src);
}
