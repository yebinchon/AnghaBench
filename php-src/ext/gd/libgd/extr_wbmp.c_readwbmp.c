
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; int width; int height; int* bitmap; } ;
typedef TYPE_1__ Wbmp ;


 int WBMP_BLACK ;
 int WBMP_WHITE ;
 int gdFree (TYPE_1__*) ;
 scalar_t__ gdMalloc (int) ;
 void* getmbi (int (*) (void*),void*) ;
 scalar_t__ overflow2 (int,int) ;
 int printf (char*,...) ;
 scalar_t__ safe_emalloc (size_t,int,int ) ;
 scalar_t__ skipheader (int (*) (void*),void*) ;

int
readwbmp (int (*getin) (void *in), void *in, Wbmp ** return_wbmp)
{
  int row, col, byte, pel, pos;
  Wbmp *wbmp;

  if ((wbmp = (Wbmp *) gdMalloc (sizeof (Wbmp))) == ((void*)0))
    return (-1);

  wbmp->type = getin (in);
  if (wbmp->type != 0)
    {
      gdFree (wbmp);
      return (-1);
    }

  if (skipheader (getin, in))
    {
      gdFree (wbmp);
      return (-1);
    }


  wbmp->width = getmbi (getin, in);
  if (wbmp->width == -1)
    {
      gdFree (wbmp);
      return (-1);
    }

  wbmp->height = getmbi (getin, in);
  if (wbmp->height == -1)
    {
      gdFree (wbmp);
      return (-1);
    }





  if (overflow2(sizeof (int), wbmp->width) ||
    overflow2(sizeof (int) * wbmp->width, wbmp->height))
    {
      gdFree(wbmp);
      return (-1);
    }

  if ((wbmp->bitmap = (int *) safe_emalloc((size_t)wbmp->width * wbmp->height, sizeof(int), 0)) == ((void*)0))
    {
      gdFree (wbmp);
      return (-1);
    }





  pos = 0;
  for (row = 0; row < wbmp->height; row++)
    {
      for (col = 0; col < wbmp->width;)
 {
   byte = getin (in);

   for (pel = 7; pel >= 0; pel--)
     {
       if (col++ < wbmp->width)
  {
    if (byte & 1 << pel)
      {
        wbmp->bitmap[pos] = WBMP_WHITE;
      }
    else
      {
        wbmp->bitmap[pos] = WBMP_BLACK;
      }
    pos++;
  }
     }
 }
    }

  *return_wbmp = wbmp;

  return (0);
}
