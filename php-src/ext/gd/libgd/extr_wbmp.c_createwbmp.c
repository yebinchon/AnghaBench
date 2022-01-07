
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* bitmap; int width; int height; } ;
typedef TYPE_1__ Wbmp ;


 int gdFree (TYPE_1__*) ;
 scalar_t__ gdMalloc (int) ;
 scalar_t__ overflow2 (int,int) ;
 scalar_t__ safe_emalloc (int,int,int ) ;

Wbmp *
createwbmp (int width, int height, int color)
{
  int i;

  Wbmp *wbmp;
  if ((wbmp = (Wbmp *) gdMalloc (sizeof (Wbmp))) == ((void*)0))
    return (((void*)0));

  if (overflow2(sizeof (int), width)) {
    gdFree(wbmp);
    return ((void*)0);
  }
  if (overflow2(sizeof (int) * width, height)) {
    gdFree(wbmp);
    return ((void*)0);
  }

  if ((wbmp->bitmap = (int *) safe_emalloc(sizeof(int), width * height, 0)) == ((void*)0))
    {
      gdFree (wbmp);
      return (((void*)0));
    }

  wbmp->width = width;
  wbmp->height = height;

  for (i = 0; i < width * height; wbmp->bitmap[i++] = color);

  return (wbmp);
}
