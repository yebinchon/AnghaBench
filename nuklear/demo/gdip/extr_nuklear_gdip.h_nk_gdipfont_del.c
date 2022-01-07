
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int handle; } ;
typedef TYPE_1__ GdipFont ;


 int GdipDeleteFont (int ) ;
 int free (TYPE_1__*) ;

void
nk_gdipfont_del(GdipFont *font)
{
    if(!font) return;
    GdipDeleteFont(font->handle);
    free(font);
}
