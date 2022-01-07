
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitmap {struct bitmap* data; } ;


 int xfree (struct bitmap*) ;

void
ui_destroy_bitmap(void * bmp)
{
  struct bitmap * b;

  b = (struct bitmap *) bmp;
  if (b != 0)
  {
    xfree(b->data);
  }
  xfree(b);
}
