
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t curFontCollection; int * fontCollection; } ;
typedef int GdipFont ;


 scalar_t__ GdipNewPrivateFontCollection (int *) ;
 scalar_t__ GdipPrivateAddMemoryFont (int ,void const*,int) ;
 TYPE_1__ gdip ;
 int nk_gdip_getCurFontCollection () ;
 int * nk_gdipfont_create_from_collection (int) ;

GdipFont*
nk_gdipfont_create_from_memory(const void* membuf, int membufSize, int size)
{
    if( !nk_gdip_getCurFontCollection() )
        if( GdipNewPrivateFontCollection(&gdip.fontCollection[gdip.curFontCollection]) ) return ((void*)0);
    if( GdipPrivateAddMemoryFont(nk_gdip_getCurFontCollection(), membuf, membufSize) ) return ((void*)0);
    return nk_gdipfont_create_from_collection(size);
}
