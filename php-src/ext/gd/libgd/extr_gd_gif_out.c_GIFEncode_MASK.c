#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  gdImagePtr ;
typedef  int /*<<< orphan*/  gdIOCtxPtr ;
typedef  int /*<<< orphan*/  ctx ;
struct TYPE_4__ {int Interlace; int in_count; int Width; int Height; long CountDown; scalar_t__ cury; scalar_t__ curx; scalar_t__ Pass; } ;
typedef  TYPE_1__ GifCtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(gdIOCtxPtr fp, int GWidth, int GHeight, int GInterlace, int Background, int Transparent, int BitsPerPixel, int *Red, int *Green, int *Blue, gdImagePtr im)
{
        int B;
        int RWidth, RHeight;
        int LeftOfs, TopOfs;
        int Resolution;
        int ColorMapSize;
        int InitCodeSize;
        int i;
		GifCtx ctx;

		FUNC4(&ctx, 0, sizeof(ctx));
        ctx.Interlace = GInterlace;
		ctx.in_count = 1;

        ColorMapSize = 1 << BitsPerPixel;

        RWidth = ctx.Width = GWidth;
        RHeight = ctx.Height = GHeight;
        LeftOfs = TopOfs = 0;

        Resolution = BitsPerPixel;

        /*
         * Calculate number of bits we are expecting
         */
        ctx.CountDown = (long)ctx.Width * (long)ctx.Height;

        /*
         * Indicate which pass we are on (if interlace)
         */
        ctx.Pass = 0;

        /*
         * The initial code size
         */
        if( BitsPerPixel <= 1 )
                InitCodeSize = 2;
        else
                InitCodeSize = BitsPerPixel;

        /*
         * Set up the current x and y position
         */
        ctx.curx = ctx.cury = 0;

        /*
         * Write the Magic header
         */
        FUNC1(Transparent < 0 ? "GIF87a" : "GIF89a", 6, fp );

        /*
         * Write out the screen width and height
         */
        FUNC3( RWidth, fp );
        FUNC3( RHeight, fp );

        /*
         * Indicate that there is a global colour map
         */
        B = 0x80;       /* Yes, there is a color map */

        /*
         * OR in the resolution
         */
        B |= (Resolution - 1) << 5;

        /*
         * OR in the Bits per Pixel
         */
        B |= (BitsPerPixel - 1);

        /*
         * Write it out
         */
        FUNC2( B, fp );

        /*
         * Write out the Background colour
         */
        FUNC2( Background, fp );

        /*
         * Byte of 0's (future expansion)
         */
        FUNC2( 0, fp );

        /*
         * Write out the Global Colour Map
         */
        for( i=0; i<ColorMapSize; ++i ) {
                FUNC2( Red[i], fp );
                FUNC2( Green[i], fp );
                FUNC2( Blue[i], fp );
        }

	/*
	 * Write out extension for transparent colour index, if necessary.
	 */
	if ( Transparent >= 0 ) {
	    FUNC2( '!', fp );
	    FUNC2( 0xf9, fp );
	    FUNC2( 4, fp );
	    FUNC2( 1, fp );
	    FUNC2( 0, fp );
	    FUNC2( 0, fp );
	    FUNC2( (unsigned char) Transparent, fp );
	    FUNC2( 0, fp );
	}

        /*
         * Write an Image separator
         */
        FUNC2( ',', fp );

        /*
         * Write the Image header
         */

        FUNC3( LeftOfs, fp );
        FUNC3( TopOfs, fp );
        FUNC3( ctx.Width, fp );
        FUNC3( ctx.Height, fp );

        /*
         * Write out whether or not the image is interlaced
         */
        if( ctx.Interlace )
                FUNC2( 0x40, fp );
        else
                FUNC2( 0x00, fp );

        /*
         * Write out the initial code size
         */
        FUNC2( InitCodeSize, fp );

        /*
         * Go and actually compress the data
         */
        FUNC0( InitCodeSize+1, fp, im, &ctx );

        /*
         * Write out a Zero-length packet (to end the series)
         */
        FUNC2( 0, fp );

        /*
         * Write the GIF file terminator
         */
        FUNC2( ';', fp );
}