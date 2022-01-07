
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint64 ;
typedef int uint32 ;
typedef scalar_t__ int32 ;
typedef enum TIFFReadDirEntryErr { ____Placeholder_TIFFReadDirEntryErr } TIFFReadDirEntryErr ;
struct TYPE_9__ {scalar_t__* i; int l; } ;
typedef TYPE_2__ UInt64Aligned_t ;
struct TYPE_11__ {int tif_flags; } ;
struct TYPE_8__ {int toff_long8; int toff_long; } ;
struct TYPE_10__ {TYPE_1__ tdir_offset; } ;
typedef TYPE_3__ TIFFDirEntry ;
typedef TYPE_4__ TIFF ;


 int TIFFReadDirEntryData (TYPE_4__*,int ,int,scalar_t__*) ;
 int TIFFReadDirEntryErrOk ;
 int TIFFSwabArrayOfLong (scalar_t__*,int) ;
 int TIFFSwabLong (int *) ;
 int TIFF_BIGTIFF ;
 int TIFF_SWAB ;
 int assert (int) ;

__attribute__((used)) static enum TIFFReadDirEntryErr TIFFReadDirEntryCheckedSrational(TIFF* tif, TIFFDirEntry* direntry, double* value)
{
 UInt64Aligned_t m;
 assert(sizeof(double)==8);
 assert(sizeof(uint64)==8);
 assert(sizeof(int32)==4);
 assert(sizeof(uint32)==4);
 if (!(tif->tif_flags&TIFF_BIGTIFF))
 {
  enum TIFFReadDirEntryErr err;
  uint32 offset = direntry->tdir_offset.toff_long;
  if (tif->tif_flags&TIFF_SWAB)
   TIFFSwabLong(&offset);
  err=TIFFReadDirEntryData(tif,offset,8,m.i);
  if (err!=TIFFReadDirEntryErrOk)
   return(err);
 }
 else
  m.l=direntry->tdir_offset.toff_long8;
 if (tif->tif_flags&TIFF_SWAB)
  TIFFSwabArrayOfLong(m.i,2);



 if ((int32)m.i[0]==0 || m.i[1]==0)
  *value=0.0;
 else
  *value=(double)((int32)m.i[0])/(double)m.i[1];
 return(TIFFReadDirEntryErrOk);
}
