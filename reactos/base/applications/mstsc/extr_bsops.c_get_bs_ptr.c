
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_Bpp ;
 char* g_bs ;
 int g_height1 ;
 int g_width1 ;

__attribute__((used)) static char *
get_bs_ptr(int x, int y)
{
  char * p;

  if (x >= 0 && x < g_width1 && y >= 0 && y < g_height1)
  {
    p = g_bs + (y * g_width1 * g_Bpp) + (x * g_Bpp);
    return p;
  }
  else
  {
    return 0;
  }
}
