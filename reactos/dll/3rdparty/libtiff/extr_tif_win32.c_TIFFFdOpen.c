
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int thandle_t ;
struct TYPE_4__ {int tif_fd; } ;
typedef TYPE_1__ TIFF ;


 TYPE_1__* TIFFClientOpen (char const*,char const*,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int _tiffCloseProc ;
 int _tiffDummyMapProc ;
 int _tiffDummyUnmapProc ;
 int _tiffMapProc ;
 int _tiffReadProc ;
 int _tiffSeekProc ;
 int _tiffSizeProc ;
 int _tiffUnmapProc ;
 int _tiffWriteProc ;

TIFF*
TIFFFdOpen(int ifd, const char* name, const char* mode)
{
 TIFF* tif;
 int fSuppressMap;
 int m;
 fSuppressMap=0;
 for (m=0; mode[m]!=0; m++)
 {
  if (mode[m]=='u')
  {
   fSuppressMap=1;
   break;
  }
 }
 tif = TIFFClientOpen(name, mode, (thandle_t)ifd,
   _tiffReadProc, _tiffWriteProc,
   _tiffSeekProc, _tiffCloseProc, _tiffSizeProc,
   fSuppressMap ? _tiffDummyMapProc : _tiffMapProc,
   fSuppressMap ? _tiffDummyUnmapProc : _tiffUnmapProc);
 if (tif)
  tif->tif_fd = ifd;
 return (tif);
}
