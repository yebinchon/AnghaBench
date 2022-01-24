#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ dwMagic; } ;
struct TYPE_8__ {scalar_t__ biCompression; scalar_t__ biPlanes; scalar_t__ biWidth; int biBitCount; int /*<<< orphan*/  biHeight; } ;
struct TYPE_9__ {TYPE_1__ bmiHeader; int /*<<< orphan*/  bmiColors; } ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  TYPE_2__* LPBITMAPINFO ;
typedef  TYPE_3__ ICCVID_Info ;

/* Variables and functions */
 scalar_t__ BI_BITFIELDS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int) ; 
 scalar_t__ ICCVID_MAGIC ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  ICERR_BADFORMAT ; 
 int /*<<< orphan*/  ICERR_BADPARAM ; 
 int /*<<< orphan*/  ICERR_OK ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static LRESULT FUNC3( ICCVID_Info *info, LPBITMAPINFO in, LPBITMAPINFO out )
{
    FUNC2("ICM_DECOMPRESS_QUERY %p %p %p\n", info, in, out);

    if( (info==NULL) || (info->dwMagic!=ICCVID_MAGIC) )
        return ICERR_BADPARAM;

    FUNC2("in: ");
    FUNC1(in);

    if( in->bmiHeader.biCompression != ICCVID_MAGIC )
        return ICERR_BADFORMAT;

    if( out )
    {
        FUNC2("out: ");
        FUNC1(out);

        if( in->bmiHeader.biPlanes != out->bmiHeader.biPlanes )
            return ICERR_BADFORMAT;
        if( in->bmiHeader.biHeight != out->bmiHeader.biHeight )
        {
            if( in->bmiHeader.biHeight != -out->bmiHeader.biHeight )
                return ICERR_BADFORMAT;
            FUNC2("Detected inverted height for video output\n");
        }
        if( in->bmiHeader.biWidth != out->bmiHeader.biWidth )
            return ICERR_BADFORMAT;

        switch( out->bmiHeader.biBitCount )
        {
        case 16:
            if ( out->bmiHeader.biCompression == BI_BITFIELDS )
            {
                if ( !FUNC0(out->bmiColors, 0x7C00, 0x03E0, 0x001F) &&
                     !FUNC0(out->bmiColors, 0xF800, 0x07E0, 0x001F) )
                {
                    FUNC2("unsupported output bit field(s) for 16-bit colors\n");
                    return ICERR_BADFORMAT;
                }
            }
            break;
        case 24:
        case 32:
            break;
        default:
            FUNC2("unsupported output bitcount = %d\n", out->bmiHeader.biBitCount );
            return ICERR_BADFORMAT;
        }
    }

    return ICERR_OK;
}