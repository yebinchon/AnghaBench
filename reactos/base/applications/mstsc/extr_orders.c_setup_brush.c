
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_9__ {int style; int* pattern; TYPE_1__* bd; } ;
struct TYPE_8__ {int * data; } ;
typedef TYPE_1__ BRUSHDATA ;
typedef TYPE_2__ BRUSH ;


 TYPE_1__* cache_get_brush_data (int,int) ;
 int error (char*,int) ;
 int memcpy (TYPE_2__*,TYPE_2__*,int) ;
 int memset (int*,int ,int) ;

__attribute__((used)) static void
setup_brush(BRUSH * out_brush, BRUSH * in_brush)
{
 BRUSHDATA *brush_data;
 uint8 cache_idx;
 uint8 colour_code;

 memcpy(out_brush, in_brush, sizeof(BRUSH));
 if (out_brush->style & 0x80)
 {
  colour_code = out_brush->style & 0x0f;
  cache_idx = out_brush->pattern[0];
  brush_data = cache_get_brush_data(colour_code, cache_idx);
  if ((brush_data == ((void*)0)) || (brush_data->data == ((void*)0)))
  {
   error("error getting brush data, style %x\n", out_brush->style);
   out_brush->bd = ((void*)0);
   memset(out_brush->pattern, 0, 8);
  }
  else
  {
   out_brush->bd = brush_data;
  }
  out_brush->style = 3;
 }
}
