
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_8__ {int td_customValueCount; TYPE_2__* td_customValues; } ;
struct TYPE_9__ {TYPE_3__ tif_dir; } ;
struct TYPE_7__ {TYPE_1__* info; } ;
struct TYPE_6__ {int field_tag; } ;
typedef TYPE_3__ TIFFDirectory ;
typedef TYPE_4__ TIFF ;



uint32 TIFFGetTagListEntry( TIFF *tif, int tag_index )

{
    TIFFDirectory* td = &tif->tif_dir;

    if( tag_index < 0 || tag_index >= td->td_customValueCount )
        return (uint32)(-1);
    else
        return td->td_customValues[tag_index].info->field_tag;
}
