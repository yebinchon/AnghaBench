
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum gs_color_format { ____Placeholder_gs_color_format } gs_color_format ;





__attribute__((used)) static inline int get_color_format_bits(enum gs_color_format format)
{
 switch ((uint32_t)format) {
 case 128:
 case 129:
  return 32;
 default:
  return 0;
 }
}
