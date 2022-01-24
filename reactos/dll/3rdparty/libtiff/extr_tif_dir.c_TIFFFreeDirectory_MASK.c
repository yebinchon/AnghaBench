#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int td_customValueCount; int /*<<< orphan*/  td_stripbytecount_entry; int /*<<< orphan*/  td_stripoffset_entry; TYPE_1__* td_customValues; int /*<<< orphan*/ * td_fieldsset; } ;
struct TYPE_8__ {TYPE_2__ tif_dir; } ;
struct TYPE_6__ {scalar_t__ value; } ;
typedef  TYPE_2__ TIFFDirectory ;
typedef  int /*<<< orphan*/  TIFFDirEntry ;
typedef  TYPE_3__ TIFF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FIELD_SETLONGS ; 
 int /*<<< orphan*/  FIELD_YCBCRPOSITIONING ; 
 int /*<<< orphan*/  FIELD_YCBCRSUBSAMPLING ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * td_colormap ; 
 int /*<<< orphan*/  td_customValues ; 
 int /*<<< orphan*/  td_inknames ; 
 int /*<<< orphan*/  td_refblackwhite ; 
 int /*<<< orphan*/  td_sampleinfo ; 
 int /*<<< orphan*/  td_smaxsamplevalue ; 
 int /*<<< orphan*/  td_sminsamplevalue ; 
 int /*<<< orphan*/  td_stripbytecount ; 
 int /*<<< orphan*/  td_stripoffset ; 
 int /*<<< orphan*/  td_subifd ; 
 int /*<<< orphan*/ * td_transferfunction ; 

void
FUNC4(TIFF* tif)
{
	TIFFDirectory *td = &tif->tif_dir;
	int            i;

	FUNC3(td->td_fieldsset, 0, FIELD_SETLONGS);
	FUNC0(td_sminsamplevalue);
	FUNC0(td_smaxsamplevalue);
	FUNC0(td_colormap[0]);
	FUNC0(td_colormap[1]);
	FUNC0(td_colormap[2]);
	FUNC0(td_sampleinfo);
	FUNC0(td_subifd);
	FUNC0(td_inknames);
	FUNC0(td_refblackwhite);
	FUNC0(td_transferfunction[0]);
	FUNC0(td_transferfunction[1]);
	FUNC0(td_transferfunction[2]);
	FUNC0(td_stripoffset);
	FUNC0(td_stripbytecount);
	FUNC1(tif, FIELD_YCBCRSUBSAMPLING);
	FUNC1(tif, FIELD_YCBCRPOSITIONING);

	/* Cleanup custom tag values */
	for( i = 0; i < td->td_customValueCount; i++ ) {
		if (td->td_customValues[i].value)
			FUNC2(td->td_customValues[i].value);
	}

	td->td_customValueCount = 0;
	FUNC0(td_customValues);

#if defined(DEFER_STRILE_LOAD)
        _TIFFmemset( &(td->td_stripoffset_entry), 0, sizeof(TIFFDirEntry));
        _TIFFmemset( &(td->td_stripbytecount_entry), 0, sizeof(TIFFDirEntry));
#endif        
}