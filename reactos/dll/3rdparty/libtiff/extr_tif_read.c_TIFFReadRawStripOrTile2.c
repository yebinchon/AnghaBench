
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t uint32 ;
typedef int tmsize_t ;
struct TYPE_7__ {int * td_stripoffset; } ;
struct TYPE_8__ {int tif_flags; scalar_t__ tif_col; scalar_t__ tif_row; int tif_clientdata; TYPE_1__ tif_dir; } ;
typedef TYPE_1__ TIFFDirectory ;
typedef TYPE_2__ TIFF ;


 int SeekOK (TYPE_2__*,int ) ;
 int TIFFErrorExt (int ,char const*,char*,unsigned long,unsigned long,...) ;
 int TIFFReadAndRealloc (TYPE_2__*,int ,int ,int,size_t,char const*) ;
 int TIFF_NOREADRAW ;
 int assert (int) ;
 int isMapped (TYPE_2__*) ;

__attribute__((used)) static tmsize_t
TIFFReadRawStripOrTile2(TIFF* tif, uint32 strip_or_tile, int is_strip,
                        tmsize_t size, const char* module)
{
        TIFFDirectory *td = &tif->tif_dir;

        assert( !isMapped(tif) );
        assert((tif->tif_flags&TIFF_NOREADRAW)==0);

        if (!SeekOK(tif, td->td_stripoffset[strip_or_tile])) {
            if( is_strip )
            {
                TIFFErrorExt(tif->tif_clientdata, module,
                    "Seek error at scanline %lu, strip %lu",
                    (unsigned long) tif->tif_row,
                    (unsigned long) strip_or_tile);
            }
            else
            {
                TIFFErrorExt(tif->tif_clientdata, module,
                    "Seek error at row %lu, col %lu, tile %lu",
                    (unsigned long) tif->tif_row,
                    (unsigned long) tif->tif_col,
                    (unsigned long) strip_or_tile);
            }
            return ((tmsize_t)(-1));
        }

        if( !TIFFReadAndRealloc( tif, size, 0, is_strip,
                                 strip_or_tile, module ) )
        {
            return ((tmsize_t)(-1));
        }

        return (size);
}
