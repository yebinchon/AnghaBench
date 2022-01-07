
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pixel_format_desc {scalar_t__ type; int to_rgba; } ;
typedef int BOOL ;


 scalar_t__ FORMAT_ARGB ;
 scalar_t__ FORMAT_ARGBF ;
 scalar_t__ FORMAT_ARGBF16 ;
 int TRUE ;

__attribute__((used)) static inline BOOL is_conversion_from_supported(const struct pixel_format_desc *format)
{
    if (format->type == FORMAT_ARGB || format->type == FORMAT_ARGBF16
            || format->type == FORMAT_ARGBF)
        return TRUE;
    return !!format->to_rgba;
}
