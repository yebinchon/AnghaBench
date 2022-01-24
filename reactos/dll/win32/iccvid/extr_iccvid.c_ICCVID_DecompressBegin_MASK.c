#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ dwMagic; int bits_per_pixel; scalar_t__ cvinfo; } ;
struct TYPE_7__ {int biBitCount; scalar_t__ biCompression; } ;
struct TYPE_8__ {int /*<<< orphan*/  bmiColors; TYPE_1__ bmiHeader; } ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  TYPE_2__* LPBITMAPINFO ;
typedef  TYPE_3__ ICCVID_Info ;

/* Variables and functions */
 scalar_t__ BI_BITFIELDS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int,int) ; 
 scalar_t__ ICCVID_MAGIC ; 
 int /*<<< orphan*/  ICERR_BADPARAM ; 
 int /*<<< orphan*/  ICERR_OK ; 
 int /*<<< orphan*/  ICERR_UNSUPPORTED ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static LRESULT FUNC4( ICCVID_Info *info, LPBITMAPINFO in, LPBITMAPINFO out )
{
    FUNC1("ICM_DECOMPRESS_BEGIN %p %p %p\n", info, in, out);

    if( (info==NULL) || (info->dwMagic!=ICCVID_MAGIC) )
        return ICERR_BADPARAM;

    info->bits_per_pixel = out->bmiHeader.biBitCount;

    if (info->bits_per_pixel == 16)
    {
        if ( out->bmiHeader.biCompression == BI_BITFIELDS )
        {
            if ( FUNC0(out->bmiColors, 0x7C00, 0x03E0, 0x001F) )
                info->bits_per_pixel = 15;
            else if ( FUNC0(out->bmiColors, 0xF800, 0x07E0, 0x001F) )
                info->bits_per_pixel = 16;
            else
            {
                FUNC1("unsupported output bit field(s) for 16-bit colors\n");
                return ICERR_UNSUPPORTED;
            }
        }
        else
            info->bits_per_pixel = 15;
    }

    FUNC1("bit_per_pixel = %d\n", info->bits_per_pixel);

    if( info->cvinfo )
        FUNC3( info->cvinfo );
    info->cvinfo = FUNC2();

    return ICERR_OK;
}