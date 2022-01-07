
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ DXGI_FORMAT_B5G5R5A1_UNORM ;
 scalar_t__ DXGI_FORMAT_B5G6R5_UNORM ;

__attribute__((used)) static inline bool is_16bit_format(uint32_t format)
{
 return format == DXGI_FORMAT_B5G5R5A1_UNORM ||
        format == DXGI_FORMAT_B5G6R5_UNORM;
}
