
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16 ;
struct TYPE_3__ {int (* init ) (int *,int) ;} ;
typedef TYPE_1__ TIFFCodec ;
typedef int TIFF ;


 TYPE_1__* TIFFFindCODEC (int ) ;
 int _TIFFSetDefaultCompressionState (int *) ;
 int stub1 (int *,int) ;

int
TIFFSetCompressionScheme(TIFF* tif, int scheme)
{
 const TIFFCodec *c = TIFFFindCODEC((uint16) scheme);

 _TIFFSetDefaultCompressionState(tif);






 return (c ? (*c->init)(tif, scheme) : 1);
}
