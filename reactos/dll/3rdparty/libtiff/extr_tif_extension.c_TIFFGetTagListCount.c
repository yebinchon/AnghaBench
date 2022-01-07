
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int td_customValueCount; } ;
struct TYPE_5__ {TYPE_1__ tif_dir; } ;
typedef TYPE_1__ TIFFDirectory ;
typedef TYPE_2__ TIFF ;



int TIFFGetTagListCount( TIFF *tif )

{
    TIFFDirectory* td = &tif->tif_dir;

    return td->td_customValueCount;
}
