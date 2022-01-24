#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64 ;
typedef  int tmsize_t ;
struct TYPE_11__ {scalar_t__* td_stripbytecount; scalar_t__* td_stripoffset; scalar_t__ td_compression; int /*<<< orphan*/  td_fillorder; } ;
struct TYPE_12__ {int tif_rawdatasize; int tif_flags; scalar_t__ tif_rawdataloaded; scalar_t__ tif_rawdataoff; int tif_rawcp; int tif_rawdata; int tif_rawcc; TYPE_1__ tif_dir; scalar_t__ tif_row; int /*<<< orphan*/  tif_clientdata; int /*<<< orphan*/  tif_curstrip; } ;
typedef  TYPE_1__ TIFFDirectory ;
typedef  TYPE_2__ TIFF ;

/* Variables and functions */
 scalar_t__ COMPRESSION_JPEG ; 
 int /*<<< orphan*/  NOSTRIP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,char*,unsigned long,...) ; 
 int FUNC2 (TYPE_2__*,int) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int,int,int,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int FUNC6 (TYPE_2__*,int) ; 
 int TIFF_BUFFERMMAP ; 
 int TIFF_MYBUFFER ; 
 int TIFF_NOBITREV ; 
 int TIFF_TMSIZE_T_MAX ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,int,int) ; 

__attribute__((used)) static int
FUNC11( TIFF *tif, int strip, tmsize_t read_ahead, int restart )
{
	static const char module[] = "TIFFFillStripPartial";
	register TIFFDirectory *td = &tif->tif_dir;
        tmsize_t unused_data;
        uint64 read_offset;
        tmsize_t to_read;
        tmsize_t read_ahead_mod;
        /* tmsize_t bytecountm; */
        
        if (!FUNC7( tif ) || !tif->tif_dir.td_stripbytecount)
            return 0;
        
        /*
         * Expand raw data buffer, if needed, to hold data
         * strip coming from file (perhaps should set upper
         * bound on the size of a buffer we'll use?).
         */

        /* bytecountm=(tmsize_t) td->td_stripbytecount[strip]; */

        /* Not completely sure where the * 2 comes from, but probably for */
        /* an exponentional growth strategy of tif_rawdatasize */
        if( read_ahead < TIFF_TMSIZE_T_MAX / 2 )
                read_ahead_mod = read_ahead * 2;
        else
                read_ahead_mod = read_ahead;
        if (read_ahead_mod > tif->tif_rawdatasize) {
                FUNC8( restart );
                
                tif->tif_curstrip = NOSTRIP;
                if ((tif->tif_flags & TIFF_MYBUFFER) == 0) {
                        FUNC1(tif->tif_clientdata, module,
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

        /*
        ** If we are reading more data, move any unused data to the
        ** start of the buffer.
        */
        if( tif->tif_rawdataloaded > 0 )
                unused_data = tif->tif_rawdataloaded - (tif->tif_rawcp - tif->tif_rawdata);
        else
                unused_data = 0;
        
        if( unused_data > 0 )
        {
		FUNC8((tif->tif_flags&TIFF_BUFFERMMAP)==0);
                FUNC10( tif->tif_rawdata, tif->tif_rawcp, unused_data );
        }

        /*
        ** Seek to the point in the file where more data should be read.
        */
        read_offset = td->td_stripoffset[strip]
                + tif->tif_rawdataoff + tif->tif_rawdataloaded;

        if (!FUNC0(tif, read_offset)) {
                FUNC1(tif->tif_clientdata, module,
                             "Seek error at scanline %lu, strip %lu",
                             (unsigned long) tif->tif_row, (unsigned long) strip);
                return 0;
        }

        /*
        ** How much do we want to read?
        */
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

	FUNC8((tif->tif_flags&TIFF_BUFFERMMAP)==0);
        if( !FUNC4( tif, to_read, unused_data,
                                 1, /* is_strip */
                                 0, /* strip_or_tile */
                                 module) )
        {
                return 0;
        }

        tif->tif_rawdataoff = tif->tif_rawdataoff + tif->tif_rawdataloaded - unused_data ;
        tif->tif_rawdataloaded = unused_data + to_read;

        tif->tif_rawcc = tif->tif_rawdataloaded;
        tif->tif_rawcp = tif->tif_rawdata;
                        
        if (!FUNC9(tif, td->td_fillorder) &&
            (tif->tif_flags & TIFF_NOBITREV) == 0) {
		FUNC8((tif->tif_flags&TIFF_BUFFERMMAP)==0);
                FUNC5(tif->tif_rawdata + unused_data, to_read );
	}

        /*
        ** When starting a strip from the beginning we need to
        ** restart the decoder.
        */
        if( restart )
        {

#ifdef JPEG_SUPPORT
            /* A bit messy since breaks the codec abstraction. Ultimately */
            /* there should be a function pointer for that, but it seems */
            /* only JPEG is affected. */
            /* For JPEG, if there are multiple scans (can generally be known */
            /* with the  read_ahead used), we need to read the whole strip */
            if( tif->tif_dir.td_compression==COMPRESSION_JPEG &&
                (uint64)tif->tif_rawcc < td->td_stripbytecount[strip] )
            {
                if( TIFFJPEGIsFullStripRequired(tif) )
                {
                    return TIFFFillStrip(tif, strip);
                }
            }
#endif

            return FUNC6(tif, strip);
        }
        else
        {
                return 1;
        }
}