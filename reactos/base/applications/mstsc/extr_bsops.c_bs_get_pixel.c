
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_Bpp ;
 char* g_bs ;
 int g_height1 ;
 int g_width1 ;

int
bs_get_pixel(int x, int y)
{
  char * p;

  if (x >= 0 && x < g_width1 && y >= 0 && y < g_height1)
  {
    p = g_bs + (y * g_width1 * g_Bpp) + (x * g_Bpp);
    if (g_Bpp == 1)
    {
      return *((unsigned char *) p);
    }
    else if (g_Bpp == 2)
    {
      return *((unsigned short *) p);
    }
    else
    {
      return *((unsigned int *) p);
    }
  }
  else
  {
    return 0;
  }
}
