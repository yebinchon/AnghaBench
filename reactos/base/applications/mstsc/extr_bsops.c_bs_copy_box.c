
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bs_copy_mem (char*,char*,int) ;
 int g_Bpp ;
 int g_height1 ;
 int g_width1 ;
 char* get_bs_ptr (int,int) ;
 int memset (char*,int ,int) ;

void
bs_copy_box(char * dst, int x, int y, int cx, int cy, int line_size)
{
  char * src;
  int i;


  if (cx < 1 || cy < 1)
  {
    return;
  }

  if (x + cx < 0 || y + cy < 0 || x >= g_width1 || y >= g_height1)
  {
    memset(dst, 0, cx * cy * g_Bpp);
    return;
  }

  if (x < 0 || y < 0 || x + cx > g_width1 || y + cy > g_height1)
  {
    memset(dst, 0, cx * cy * g_Bpp);
    if (x < 0)
    {
      cx += x;
      dst += -x * g_Bpp;
      x = 0;
    }
    if (x + cx > g_width1)
    {
      cx = g_width1 - x;
    }
    for (i = 0; i < cy; i++)
    {
      src = get_bs_ptr(x, y + i);
      if (src != 0)
      {
        bs_copy_mem(dst, src, cx * g_Bpp);
      }
      dst += line_size;
    }
  }
  else
  {
    for (i = 0; i < cy; i++)
    {
      src = get_bs_ptr(x, y + i);
      if (src != 0)
      {
        bs_copy_mem(dst, src, cx * g_Bpp);
      }
      dst += line_size;
    }
  }
}
