
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint64 ;
struct TYPE_9__ {int td_nstrips; } ;
struct TYPE_10__ {scalar_t__ tif_mode; int tif_flags; TYPE_1__ tif_dir; } ;
typedef TYPE_2__ TIFF ;


 scalar_t__ O_RDONLY ;
 scalar_t__ O_RDWR ;
 int TIFFFlushData (TYPE_2__*) ;
 scalar_t__ TIFFGetField (TYPE_2__*,int ,int **) ;
 scalar_t__ TIFFIsTiled (TYPE_2__*) ;
 int TIFFRewriteDirectory (TYPE_2__*) ;
 int TIFFTAG_STRIPBYTECOUNTS ;
 int TIFFTAG_STRIPOFFSETS ;
 int TIFFTAG_TILEBYTECOUNTS ;
 int TIFFTAG_TILEOFFSETS ;
 int TIFF_BEENWRITING ;
 int TIFF_DIRTYDIRECT ;
 int TIFF_DIRTYSTRIP ;
 int TIFF_LONG8 ;
 scalar_t__ _TIFFRewriteField (TYPE_2__*,int ,int ,int ,int *) ;

int
TIFFFlush(TIFF* tif)
{
    if( tif->tif_mode == O_RDONLY )
        return 1;

    if (!TIFFFlushData(tif))
        return (0);






    if( (tif->tif_flags & TIFF_DIRTYSTRIP)
        && !(tif->tif_flags & TIFF_DIRTYDIRECT)
        && tif->tif_mode == O_RDWR )
    {
        uint64 *offsets=((void*)0), *sizes=((void*)0);

        if( TIFFIsTiled(tif) )
        {
            if( TIFFGetField( tif, TIFFTAG_TILEOFFSETS, &offsets )
                && TIFFGetField( tif, TIFFTAG_TILEBYTECOUNTS, &sizes )
                && _TIFFRewriteField( tif, TIFFTAG_TILEOFFSETS, TIFF_LONG8,
                                      tif->tif_dir.td_nstrips, offsets )
                && _TIFFRewriteField( tif, TIFFTAG_TILEBYTECOUNTS, TIFF_LONG8,
                                      tif->tif_dir.td_nstrips, sizes ) )
            {
                tif->tif_flags &= ~TIFF_DIRTYSTRIP;
                tif->tif_flags &= ~TIFF_BEENWRITING;
                return 1;
            }
        }
        else
        {
            if( TIFFGetField( tif, TIFFTAG_STRIPOFFSETS, &offsets )
                && TIFFGetField( tif, TIFFTAG_STRIPBYTECOUNTS, &sizes )
                && _TIFFRewriteField( tif, TIFFTAG_STRIPOFFSETS, TIFF_LONG8,
                                      tif->tif_dir.td_nstrips, offsets )
                && _TIFFRewriteField( tif, TIFFTAG_STRIPBYTECOUNTS, TIFF_LONG8,
                                      tif->tif_dir.td_nstrips, sizes ) )
            {
                tif->tif_flags &= ~TIFF_DIRTYSTRIP;
                tif->tif_flags &= ~TIFF_BEENWRITING;
                return 1;
            }
        }
    }

    if ((tif->tif_flags & (TIFF_DIRTYDIRECT|TIFF_DIRTYSTRIP))
        && !TIFFRewriteDirectory(tif))
        return (0);

    return (1);
}
