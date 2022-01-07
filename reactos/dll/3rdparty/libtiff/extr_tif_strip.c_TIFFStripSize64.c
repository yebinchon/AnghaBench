
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64 ;
typedef scalar_t__ uint32 ;
struct TYPE_5__ {scalar_t__ td_rowsperstrip; scalar_t__ td_imagelength; } ;
struct TYPE_6__ {TYPE_1__ tif_dir; } ;
typedef TYPE_1__ TIFFDirectory ;
typedef TYPE_2__ TIFF ;


 int TIFFVStripSize64 (TYPE_2__*,scalar_t__) ;

uint64
TIFFStripSize64(TIFF* tif)
{
 TIFFDirectory* td = &tif->tif_dir;
 uint32 rps = td->td_rowsperstrip;
 if (rps > td->td_imagelength)
  rps = td->td_imagelength;
 return (TIFFVStripSize64(tif, rps));
}
