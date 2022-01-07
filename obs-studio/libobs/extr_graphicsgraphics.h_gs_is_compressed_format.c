
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum gs_color_format { ____Placeholder_gs_color_format } gs_color_format ;


 int GS_DXT1 ;
 int GS_DXT3 ;
 int GS_DXT5 ;

__attribute__((used)) static inline bool gs_is_compressed_format(enum gs_color_format format)
{
 return (format == GS_DXT1 || format == GS_DXT3 || format == GS_DXT5);
}
