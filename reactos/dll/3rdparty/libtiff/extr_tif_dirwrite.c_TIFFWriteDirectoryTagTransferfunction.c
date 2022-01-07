
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32 ;
typedef int uint16 ;
struct TYPE_5__ {int td_bitspersample; int td_samplesperpixel; int td_extrasamples; int * td_transferfunction; } ;
struct TYPE_6__ {TYPE_1__ tif_dir; int tif_clientdata; } ;
typedef int TIFFDirEntry ;
typedef TYPE_2__ TIFF ;


 int TIFFErrorExt (int ,char const*,char*) ;
 int TIFFTAG_TRANSFERFUNCTION ;
 int TIFFWriteDirectoryTagCheckedShortArray (TYPE_2__*,int*,int *,int ,int,int*) ;
 int _TIFFfree (int*) ;
 int* _TIFFmalloc (int) ;
 int _TIFFmemcmp (int ,int ,int) ;
 int _TIFFmemcpy (int*,int ,int) ;

__attribute__((used)) static int
TIFFWriteDirectoryTagTransferfunction(TIFF* tif, uint32* ndir, TIFFDirEntry* dir)
{
 static const char module[] = "TIFFWriteDirectoryTagTransferfunction";
 uint32 m;
 uint16 n;
 uint16* o;
 int p;
 if (dir==((void*)0))
 {
  (*ndir)++;
  return(1);
 }
 m=(1<<tif->tif_dir.td_bitspersample);
 n=tif->tif_dir.td_samplesperpixel-tif->tif_dir.td_extrasamples;






 if (n>3)
  n=3;
 if (n==3)
 {
  if (!_TIFFmemcmp(tif->tif_dir.td_transferfunction[0],tif->tif_dir.td_transferfunction[2],m*sizeof(uint16)))
   n=2;
 }
 if (n==2)
 {
  if (!_TIFFmemcmp(tif->tif_dir.td_transferfunction[0],tif->tif_dir.td_transferfunction[1],m*sizeof(uint16)))
   n=1;
 }
 if (n==0)
  n=1;
 o=_TIFFmalloc(n*m*sizeof(uint16));
 if (o==((void*)0))
 {
  TIFFErrorExt(tif->tif_clientdata,module,"Out of memory");
  return(0);
 }
 _TIFFmemcpy(&o[0],tif->tif_dir.td_transferfunction[0],m*sizeof(uint16));
 if (n>1)
  _TIFFmemcpy(&o[m],tif->tif_dir.td_transferfunction[1],m*sizeof(uint16));
 if (n>2)
  _TIFFmemcpy(&o[2*m],tif->tif_dir.td_transferfunction[2],m*sizeof(uint16));
 p=TIFFWriteDirectoryTagCheckedShortArray(tif,ndir,dir,TIFFTAG_TRANSFERFUNCTION,n*m,o);
 _TIFFfree(o);
 return(p);
}
