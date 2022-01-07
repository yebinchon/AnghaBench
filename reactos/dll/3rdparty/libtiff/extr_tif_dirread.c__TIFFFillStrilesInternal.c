
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_9__ {scalar_t__ tdir_count; } ;
struct TYPE_7__ {scalar_t__* td_stripoffset; int td_nstrips; scalar_t__* td_stripbytecount; int td_stripbytecountsorted; TYPE_3__ td_stripbytecount_entry; TYPE_3__ td_stripoffset_entry; } ;
struct TYPE_8__ {TYPE_1__ tif_dir; } ;
typedef TYPE_1__ TIFFDirectory ;
typedef int TIFFDirEntry ;
typedef TYPE_2__ TIFF ;


 int TIFFFetchStripThing (TYPE_2__*,TYPE_3__*,int,scalar_t__**) ;
 int _TIFFmemset (TYPE_3__*,int ,int) ;

__attribute__((used)) static int _TIFFFillStrilesInternal( TIFF *tif, int loadStripByteCount )
{
        (void) tif;
        (void) loadStripByteCount;
        return 1;

}
