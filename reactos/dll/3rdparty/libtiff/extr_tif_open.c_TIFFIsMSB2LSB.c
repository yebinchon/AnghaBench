
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TIFF ;


 int FILLORDER_MSB2LSB ;
 int isFillOrder (int *,int ) ;

int
TIFFIsMSB2LSB(TIFF* tif)
{
 return (isFillOrder(tif, FILLORDER_MSB2LSB));
}
