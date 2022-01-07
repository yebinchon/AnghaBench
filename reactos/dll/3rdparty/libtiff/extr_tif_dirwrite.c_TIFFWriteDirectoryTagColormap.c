
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32 ;
typedef int uint16 ;
struct TYPE_5__ {int td_bitspersample; int * td_colormap; } ;
struct TYPE_6__ {TYPE_1__ tif_dir; int tif_clientdata; } ;
typedef int TIFFDirEntry ;
typedef TYPE_2__ TIFF ;


 int TIFFErrorExt (int ,char const*,char*) ;
 int TIFFTAG_COLORMAP ;
 int TIFFWriteDirectoryTagCheckedShortArray (TYPE_2__*,int*,int *,int ,int,int *) ;
 int _TIFFfree (int *) ;
 int * _TIFFmalloc (int) ;
 int _TIFFmemcpy (int *,int ,int) ;

__attribute__((used)) static int
TIFFWriteDirectoryTagColormap(TIFF* tif, uint32* ndir, TIFFDirEntry* dir)
{
 static const char module[] = "TIFFWriteDirectoryTagColormap";
 uint32 m;
 uint16* n;
 int o;
 if (dir==((void*)0))
 {
  (*ndir)++;
  return(1);
 }
 m=(1<<tif->tif_dir.td_bitspersample);
 n=_TIFFmalloc(3*m*sizeof(uint16));
 if (n==((void*)0))
 {
  TIFFErrorExt(tif->tif_clientdata,module,"Out of memory");
  return(0);
 }
 _TIFFmemcpy(&n[0],tif->tif_dir.td_colormap[0],m*sizeof(uint16));
 _TIFFmemcpy(&n[m],tif->tif_dir.td_colormap[1],m*sizeof(uint16));
 _TIFFmemcpy(&n[2*m],tif->tif_dir.td_colormap[2],m*sizeof(uint16));
 o=TIFFWriteDirectoryTagCheckedShortArray(tif,ndir,dir,TIFFTAG_COLORMAP,3*m,n);
 _TIFFfree(n);
 return(o);
}
