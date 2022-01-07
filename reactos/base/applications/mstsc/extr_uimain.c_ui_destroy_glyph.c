
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitmap {struct bitmap* data; } ;


 int xfree (struct bitmap*) ;

void
ui_destroy_glyph(void * glyph)
{
  struct bitmap * the_glyph;

  the_glyph = glyph;
  if (the_glyph != 0)
  {
    xfree(the_glyph->data);
  }
  xfree(the_glyph);
}
