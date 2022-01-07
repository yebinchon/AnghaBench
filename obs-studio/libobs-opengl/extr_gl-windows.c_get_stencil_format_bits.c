
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum gs_zstencil_format { ____Placeholder_gs_zstencil_format } gs_zstencil_format ;




__attribute__((used)) static inline int get_stencil_format_bits(enum gs_zstencil_format zsformat)
{
 switch ((uint32_t)zsformat) {
 case 128:
  return 8;
 default:
  return 0;
 }
}
