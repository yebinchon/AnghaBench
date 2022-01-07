
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32 ;
typedef scalar_t__ uint16 ;
struct TYPE_5__ {int td_samplesperpixel; } ;
struct TYPE_6__ {TYPE_1__ tif_dir; int tif_clientdata; } ;
typedef int TIFFDirEntry ;
typedef TYPE_2__ TIFF ;


 int TIFFErrorExt (int ,char const*,char*) ;
 int TIFFWriteDirectoryTagCheckedShortArray (TYPE_2__*,int *,int *,scalar_t__,scalar_t__,scalar_t__*) ;
 int _TIFFfree (scalar_t__*) ;
 scalar_t__* _TIFFmalloc (int) ;

__attribute__((used)) static int
TIFFWriteDirectoryTagShortPerSample(TIFF* tif, uint32* ndir, TIFFDirEntry* dir, uint16 tag, uint16 value)
{
 static const char module[] = "TIFFWriteDirectoryTagShortPerSample";
 uint16* m;
 uint16* na;
 uint16 nb;
 int o;
 if (dir==((void*)0))
 {
  (*ndir)++;
  return(1);
 }
 m=_TIFFmalloc(tif->tif_dir.td_samplesperpixel*sizeof(uint16));
 if (m==((void*)0))
 {
  TIFFErrorExt(tif->tif_clientdata,module,"Out of memory");
  return(0);
 }
 for (na=m, nb=0; nb<tif->tif_dir.td_samplesperpixel; na++, nb++)
  *na=value;
 o=TIFFWriteDirectoryTagCheckedShortArray(tif,ndir,dir,tag,tif->tif_dir.td_samplesperpixel,m);
 _TIFFfree(m);
 return(o);
}
