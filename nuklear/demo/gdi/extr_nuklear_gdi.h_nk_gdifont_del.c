
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dc; int handle; } ;
typedef TYPE_1__ GdiFont ;


 int DeleteDC (int ) ;
 int DeleteObject (int ) ;
 int free (TYPE_1__*) ;

void
nk_gdifont_del(GdiFont *font)
{
    if(!font) return;
    DeleteObject(font->handle);
    DeleteDC(font->dc);
    free(font);
}
