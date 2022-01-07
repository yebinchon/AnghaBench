
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * td_stripoffset; } ;
struct TYPE_9__ {TYPE_1__ tif_dir; } ;
typedef TYPE_2__ TIFF ;


 int FALSE ;
 int SEEK_END ;
 int TIFFSeekFile (TYPE_2__*,int ,int ) ;
 int TIFFSetWriteOffset (TYPE_2__*,int ) ;
 int TIFFSetupStrips (TYPE_2__*) ;
 int TIFFWriteDirectorySec (TYPE_2__*,int ,int ,int *) ;
 int TRUE ;

int
TIFFCheckpointDirectory(TIFF* tif)
{
 int rc;

 if (tif->tif_dir.td_stripoffset == ((void*)0))
     (void) TIFFSetupStrips(tif);
 rc = TIFFWriteDirectorySec(tif,TRUE,FALSE,((void*)0));
 (void) TIFFSetWriteOffset(tif, TIFFSeekFile(tif, 0, SEEK_END));
 return rc;
}
