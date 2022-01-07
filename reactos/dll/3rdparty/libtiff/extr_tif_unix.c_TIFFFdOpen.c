
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int fd; int h; } ;
typedef TYPE_1__ fd_as_handle_union_t ;
struct TYPE_6__ {int tif_fd; } ;
typedef TYPE_2__ TIFF ;


 TYPE_2__* TIFFClientOpen (char const*,char const*,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int _tiffCloseProc ;
 int _tiffMapProc ;
 int _tiffReadProc ;
 int _tiffSeekProc ;
 int _tiffSizeProc ;
 int _tiffUnmapProc ;
 int _tiffWriteProc ;

TIFF*
TIFFFdOpen(int fd, const char* name, const char* mode)
{
 TIFF* tif;

 fd_as_handle_union_t fdh;
 fdh.fd = fd;
 tif = TIFFClientOpen(name, mode,
     fdh.h,
     _tiffReadProc, _tiffWriteProc,
     _tiffSeekProc, _tiffCloseProc, _tiffSizeProc,
     _tiffMapProc, _tiffUnmapProc);
 if (tif)
  tif->tif_fd = fd;
 return (tif);
}
