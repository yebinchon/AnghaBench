
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pixel_format_desc {scalar_t__ format; } ;


 int ARRAY_SIZE (struct pixel_format_desc const*) ;
 scalar_t__ D3DFMT_UNKNOWN ;
 struct pixel_format_desc const* formats ;

const struct pixel_format_desc *get_format_info_idx(int idx)
{
    if(idx >= ARRAY_SIZE(formats))
        return ((void*)0);
    if(formats[idx].format == D3DFMT_UNKNOWN)
        return ((void*)0);
    return &formats[idx];
}
