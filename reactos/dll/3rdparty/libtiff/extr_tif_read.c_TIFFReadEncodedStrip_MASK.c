#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
typedef  int /*<<< orphan*/  uint16 ;
typedef  scalar_t__ tmsize_t ;
struct TYPE_12__ {scalar_t__ td_compression; int /*<<< orphan*/  td_fillorder; } ;
struct TYPE_13__ {int tif_flags; scalar_t__ (* tif_decodestrip ) (TYPE_2__*,void*,scalar_t__,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* tif_postdecode ) (TYPE_2__*,void*,scalar_t__) ;TYPE_1__ tif_dir; } ;
typedef  TYPE_1__ TIFFDirectory ;
typedef  TYPE_2__ TIFF ;

/* Variables and functions */
 scalar_t__ COMPRESSION_NONE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,void*,scalar_t__,char const*) ; 
 int /*<<< orphan*/  FUNC3 (void*,scalar_t__) ; 
 int TIFF_NOBITREV ; 
 int TIFF_NOREADRAW ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,void*,scalar_t__) ; 
 scalar_t__ FUNC7 (TYPE_2__*,void*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,void*,scalar_t__) ; 

tmsize_t
FUNC9(TIFF* tif, uint32 strip, void* buf, tmsize_t size)
{
	static const char module[] = "TIFFReadEncodedStrip";
	TIFFDirectory *td = &tif->tif_dir;
	tmsize_t stripsize;
	uint16 plane;

	stripsize=FUNC1(tif, strip, &plane);
	if (stripsize==((tmsize_t)(-1)))
		return((tmsize_t)(-1));

    /* shortcut to avoid an extra memcpy() */
    if( td->td_compression == COMPRESSION_NONE &&
        size!=(tmsize_t)(-1) && size >= stripsize &&
        !FUNC5(tif) &&
        ((tif->tif_flags&TIFF_NOREADRAW)==0) )
    {
        if (FUNC2(tif, strip, buf, stripsize, module) != stripsize)
            return ((tmsize_t)(-1));

        if (!FUNC4(tif, td->td_fillorder) &&
            (tif->tif_flags & TIFF_NOBITREV) == 0)
            FUNC3(buf,stripsize);

        (*tif->tif_postdecode)(tif,buf,stripsize);
        return (stripsize);
    }

	if ((size!=(tmsize_t)(-1))&&(size<stripsize))
		stripsize=size;
	if (!FUNC0(tif,strip))
		return((tmsize_t)(-1));
	if ((*tif->tif_decodestrip)(tif,buf,stripsize,plane)<=0)
		return((tmsize_t)(-1));
	(*tif->tif_postdecode)(tif,buf,stripsize);
	return(stripsize);
}