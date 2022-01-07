
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ uint64 ;
typedef int tmsize_t ;
struct TYPE_11__ {scalar_t__* td_stripbytecount; scalar_t__* td_stripoffset; scalar_t__ td_compression; int td_fillorder; } ;
struct TYPE_12__ {int tif_rawdatasize; int tif_flags; scalar_t__ tif_rawdataloaded; scalar_t__ tif_rawdataoff; int tif_rawcp; int tif_rawdata; int tif_rawcc; TYPE_1__ tif_dir; scalar_t__ tif_row; int tif_clientdata; int tif_curstrip; } ;
typedef TYPE_1__ TIFFDirectory ;
typedef TYPE_2__ TIFF ;


 scalar_t__ COMPRESSION_JPEG ;
 int NOSTRIP ;
 int SeekOK (TYPE_2__*,scalar_t__) ;
 int TIFFErrorExt (int ,char const*,char*,unsigned long,...) ;
 int TIFFFillStrip (TYPE_2__*,int) ;
 scalar_t__ TIFFJPEGIsFullStripRequired (TYPE_2__*) ;
 int TIFFReadAndRealloc (TYPE_2__*,int,int,int,int ,char const*) ;
 int TIFFReverseBits (int,int) ;
 int TIFFStartStrip (TYPE_2__*,int) ;
 int TIFF_BUFFERMMAP ;
 int TIFF_MYBUFFER ;
 int TIFF_NOBITREV ;
 int TIFF_TMSIZE_T_MAX ;
 int _TIFFFillStriles (TYPE_2__*) ;
 int assert (int) ;
 int isFillOrder (TYPE_2__*,int ) ;
 int memmove (int,int,int) ;

__attribute__((used)) static int
TIFFFillStripPartial( TIFF *tif, int strip, tmsize_t read_ahead, int restart )
{
 static const char module[] = "TIFFFillStripPartial";
 register TIFFDirectory *td = &tif->tif_dir;
        tmsize_t unused_data;
        uint64 read_offset;
        tmsize_t to_read;
        tmsize_t read_ahead_mod;


        if (!_TIFFFillStriles( tif ) || !tif->tif_dir.td_stripbytecount)
            return 0;
        if( read_ahead < TIFF_TMSIZE_T_MAX / 2 )
                read_ahead_mod = read_ahead * 2;
        else
                read_ahead_mod = read_ahead;
        if (read_ahead_mod > tif->tif_rawdatasize) {
                assert( restart );

                tif->tif_curstrip = NOSTRIP;
                if ((tif->tif_flags & TIFF_MYBUFFER) == 0) {
                        TIFFErrorExt(tif->tif_clientdata, module,
                                     "Data buffer too small to hold part of strip %lu",
                                     (unsigned long) strip);
                        return (0);
                }
        }

        if( restart )
        {
                tif->tif_rawdataloaded = 0;
                tif->tif_rawdataoff = 0;
        }





        if( tif->tif_rawdataloaded > 0 )
                unused_data = tif->tif_rawdataloaded - (tif->tif_rawcp - tif->tif_rawdata);
        else
                unused_data = 0;

        if( unused_data > 0 )
        {
  assert((tif->tif_flags&TIFF_BUFFERMMAP)==0);
                memmove( tif->tif_rawdata, tif->tif_rawcp, unused_data );
        }




        read_offset = td->td_stripoffset[strip]
                + tif->tif_rawdataoff + tif->tif_rawdataloaded;

        if (!SeekOK(tif, read_offset)) {
                TIFFErrorExt(tif->tif_clientdata, module,
                             "Seek error at scanline %lu, strip %lu",
                             (unsigned long) tif->tif_row, (unsigned long) strip);
                return 0;
        }




        if( read_ahead_mod > tif->tif_rawdatasize )
                to_read = read_ahead_mod - unused_data;
        else
                to_read = tif->tif_rawdatasize - unused_data;
        if( (uint64) to_read > td->td_stripbytecount[strip]
            - tif->tif_rawdataoff - tif->tif_rawdataloaded )
        {
                to_read = (tmsize_t) td->td_stripbytecount[strip]
                        - tif->tif_rawdataoff - tif->tif_rawdataloaded;
        }

 assert((tif->tif_flags&TIFF_BUFFERMMAP)==0);
        if( !TIFFReadAndRealloc( tif, to_read, unused_data,
                                 1,
                                 0,
                                 module) )
        {
                return 0;
        }

        tif->tif_rawdataoff = tif->tif_rawdataoff + tif->tif_rawdataloaded - unused_data ;
        tif->tif_rawdataloaded = unused_data + to_read;

        tif->tif_rawcc = tif->tif_rawdataloaded;
        tif->tif_rawcp = tif->tif_rawdata;

        if (!isFillOrder(tif, td->td_fillorder) &&
            (tif->tif_flags & TIFF_NOBITREV) == 0) {
  assert((tif->tif_flags&TIFF_BUFFERMMAP)==0);
                TIFFReverseBits(tif->tif_rawdata + unused_data, to_read );
 }





        if( restart )
        {
            return TIFFStartStrip(tif, strip);
        }
        else
        {
                return 1;
        }
}
