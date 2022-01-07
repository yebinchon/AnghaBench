
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pixel_format_desc {scalar_t__ format; } ;
typedef scalar_t__ D3DFORMAT ;


 scalar_t__ D3DFMT_UNKNOWN ;
 int FIXME (char*,scalar_t__,int ) ;
 int debugstr_an (char const*,int) ;
 struct pixel_format_desc const* formats ;

const struct pixel_format_desc *get_format_info(D3DFORMAT format)
{
    unsigned int i = 0;
    while(formats[i].format != format && formats[i].format != D3DFMT_UNKNOWN) i++;
    if (formats[i].format == D3DFMT_UNKNOWN)
        FIXME("Unknown format %#x (as FOURCC %s).\n", format, debugstr_an((const char *)&format, 4));
    return &formats[i];
}
