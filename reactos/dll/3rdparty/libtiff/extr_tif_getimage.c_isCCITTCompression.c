
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16 ;
typedef int TIFF ;


 scalar_t__ COMPRESSION_CCITTFAX3 ;
 scalar_t__ COMPRESSION_CCITTFAX4 ;
 scalar_t__ COMPRESSION_CCITTRLE ;
 scalar_t__ COMPRESSION_CCITTRLEW ;
 int TIFFGetField (int *,int ,scalar_t__*) ;
 int TIFFTAG_COMPRESSION ;

__attribute__((used)) static int
isCCITTCompression(TIFF* tif)
{
    uint16 compress;
    TIFFGetField(tif, TIFFTAG_COMPRESSION, &compress);
    return (compress == COMPRESSION_CCITTFAX3 ||
     compress == COMPRESSION_CCITTFAX4 ||
     compress == COMPRESSION_CCITTRLE ||
     compress == COMPRESSION_CCITTRLEW);
}
