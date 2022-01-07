
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_imgfmt_desc {int flags; int num_planes; } ;


 int MP_IMGFLAG_RGB ;
 struct mp_imgfmt_desc mp_imgfmt_get_desc (int) ;

__attribute__((used)) static inline bool IMGFMT_IS_RGB(int fmt)
{
    struct mp_imgfmt_desc desc = mp_imgfmt_get_desc(fmt);
    return (desc.flags & MP_IMGFLAG_RGB) && desc.num_planes == 1;
}
