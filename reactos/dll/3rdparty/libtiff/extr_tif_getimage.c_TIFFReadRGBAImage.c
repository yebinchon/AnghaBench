
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int TIFF ;


 int ORIENTATION_BOTLEFT ;
 int TIFFReadRGBAImageOriented (int *,int ,int ,int *,int ,int) ;

int
TIFFReadRGBAImage(TIFF* tif,
    uint32 rwidth, uint32 rheight, uint32* raster, int stop)
{
 return TIFFReadRGBAImageOriented(tif, rwidth, rheight, raster,
      ORIENTATION_BOTLEFT, stop);
}
