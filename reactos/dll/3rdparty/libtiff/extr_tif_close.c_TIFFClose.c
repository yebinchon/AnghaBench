
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int thandle_t ;
struct TYPE_4__ {int tif_clientdata; int (* tif_closeproc ) (int ) ;} ;
typedef int (* TIFFCloseProc ) (int ) ;
typedef TYPE_1__ TIFF ;


 int TIFFCleanup (TYPE_1__*) ;
 int stub1 (int ) ;

void
TIFFClose(TIFF* tif)
{
 TIFFCloseProc closeproc = tif->tif_closeproc;
 thandle_t fd = tif->tif_clientdata;

 TIFFCleanup(tif);
 (void) (*closeproc)(fd);
}
