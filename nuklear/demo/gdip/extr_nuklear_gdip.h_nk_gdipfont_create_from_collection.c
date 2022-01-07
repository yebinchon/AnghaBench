
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int curFontCollection; } ;
struct TYPE_4__ {int handle; } ;
typedef int REAL ;
typedef int INT ;
typedef int GpFontFamily ;
typedef TYPE_1__ GdipFont ;


 int FontStyleRegular ;
 scalar_t__ GdipCreateFont (int *,int ,int ,int ,int *) ;
 scalar_t__ GdipGetFontCollectionFamilyCount (int ,int*) ;
 scalar_t__ GdipGetFontCollectionFamilyList (int ,int,int **,int*) ;
 int UnitPixel ;
 scalar_t__ calloc (int,int) ;
 int free (int **) ;
 TYPE_3__ gdip ;
 int nk_gdip_getCurFontCollection () ;

GdipFont*
nk_gdipfont_create_from_collection(int size){
    GpFontFamily **families;
    INT count;
    GdipFont *font = (GdipFont*)calloc(1, sizeof(GdipFont));
    if( GdipGetFontCollectionFamilyCount(nk_gdip_getCurFontCollection(), &count) ) return ((void*)0);
    families = (GpFontFamily**)calloc(1, sizeof(GpFontFamily*));
    if( !families ) return ((void*)0);
    if( GdipGetFontCollectionFamilyList(nk_gdip_getCurFontCollection(), count, families, &count) ) return ((void*)0);
    if( count < 1 ) return ((void*)0);
    if( GdipCreateFont(families[count-1], (REAL)size, FontStyleRegular, UnitPixel, &font->handle) ) return ((void*)0);
    free(families);
    gdip.curFontCollection++;
    return font;
}
