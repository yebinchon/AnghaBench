#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8 ;
typedef  int uint64 ;
typedef  int uint32 ;
typedef  int uint16 ;
typedef  scalar_t__ tmsize_t ;
struct TYPE_13__ {int tif_diroff; int tif_flags; scalar_t__ tif_size; scalar_t__ tif_base; int /*<<< orphan*/  tif_clientdata; int /*<<< orphan*/  tif_name; } ;
struct TYPE_11__ {void* toff_long8; } ;
struct TYPE_12__ {int tdir_tag; int tdir_type; int tdir_count; TYPE_1__ tdir_offset; } ;
typedef  TYPE_2__ TIFFDirEntry ;
typedef  TYPE_3__ TIFF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,char*,...) ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 int /*<<< orphan*/  FUNC6 (int*) ; 
 int TIFF_BIGTIFF ; 
 int TIFF_SWAB ; 
 void* FUNC7 (TYPE_3__*,int,int,char*) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (int*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 

__attribute__((used)) static uint16
FUNC12(TIFF* tif, uint64 diroff, TIFFDirEntry** pdir,
                   uint64 *nextdiroff)
{
	static const char module[] = "TIFFFetchDirectory";

	void* origdir;
	uint16 dircount16;
	uint32 dirsize;
	TIFFDirEntry* dir;
	uint8* ma;
	TIFFDirEntry* mb;
	uint16 n;

	FUNC10(pdir);

	tif->tif_diroff = diroff;
	if (nextdiroff)
		*nextdiroff = 0;
	if (!FUNC11(tif)) {
		if (!FUNC1(tif, tif->tif_diroff)) {
			FUNC2(tif->tif_clientdata, module,
				"%s: Seek error accessing TIFF directory",
				tif->tif_name);
			return 0;
		}
		if (!(tif->tif_flags&TIFF_BIGTIFF))
		{
			if (!FUNC0(tif, &dircount16, sizeof (uint16))) {
				FUNC2(tif->tif_clientdata, module,
				    "%s: Can not read TIFF directory count",
				    tif->tif_name);
				return 0;
			}
			if (tif->tif_flags & TIFF_SWAB)
				FUNC6(&dircount16);
			if (dircount16>4096)
			{
				FUNC2(tif->tif_clientdata, module,
				    "Sanity check on directory count failed, this is probably not a valid IFD offset");
				return 0;
			}
			dirsize = 12;
		} else {
			uint64 dircount64;
			if (!FUNC0(tif, &dircount64, sizeof (uint64))) {
				FUNC2(tif->tif_clientdata, module,
					"%s: Can not read TIFF directory count",
					tif->tif_name);
				return 0;
			}
			if (tif->tif_flags & TIFF_SWAB)
				FUNC5(&dircount64);
			if (dircount64>4096)
			{
				FUNC2(tif->tif_clientdata, module,
				    "Sanity check on directory count failed, this is probably not a valid IFD offset");
				return 0;
			}
			dircount16 = (uint16)dircount64;
			dirsize = 20;
		}
		origdir = FUNC7(tif, dircount16,
		    dirsize, "to read TIFF directory");
		if (origdir == NULL)
			return 0;
		if (!FUNC0(tif, origdir, (tmsize_t)(dircount16*dirsize))) {
			FUNC2(tif->tif_clientdata, module,
				"%.100s: Can not read TIFF directory",
				tif->tif_name);
			FUNC8(origdir);
			return 0;
		}
		/*
		 * Read offset to next directory for sequential scans if
		 * needed.
		 */
		if (nextdiroff)
		{
			if (!(tif->tif_flags&TIFF_BIGTIFF))
			{
				uint32 nextdiroff32;
				if (!FUNC0(tif, &nextdiroff32, sizeof(uint32)))
					nextdiroff32 = 0;
				if (tif->tif_flags&TIFF_SWAB)
					FUNC4(&nextdiroff32);
				*nextdiroff=nextdiroff32;
			} else {
				if (!FUNC0(tif, nextdiroff, sizeof(uint64)))
					*nextdiroff = 0;
				if (tif->tif_flags&TIFF_SWAB)
					FUNC5(nextdiroff);
			}
		}
	} else {
		tmsize_t m;
		tmsize_t off = (tmsize_t) tif->tif_diroff;
		if ((uint64)off!=tif->tif_diroff)
		{
			FUNC2(tif->tif_clientdata,module,"Can not read TIFF directory count");
			return(0);
		}

		/*
		 * Check for integer overflow when validating the dir_off,
		 * otherwise a very high offset may cause an OOB read and
		 * crash the client. Make two comparisons instead of
		 *
		 *  off + sizeof(uint16) > tif->tif_size
		 *
		 * to avoid overflow.
		 */
		if (!(tif->tif_flags&TIFF_BIGTIFF))
		{
			m=off+sizeof(uint16);
			if ((m<off)||(m<(tmsize_t)sizeof(uint16))||(m>tif->tif_size)) {
				FUNC2(tif->tif_clientdata, module,
					"Can not read TIFF directory count");
				return 0;
			} else {
				FUNC9(&dircount16, tif->tif_base + off,
					    sizeof(uint16));
			}
			off += sizeof (uint16);
			if (tif->tif_flags & TIFF_SWAB)
				FUNC6(&dircount16);
			if (dircount16>4096)
			{
				FUNC2(tif->tif_clientdata, module,
				    "Sanity check on directory count failed, this is probably not a valid IFD offset");
				return 0;
			}
			dirsize = 12;
		}
		else
		{
			uint64 dircount64;
			m=off+sizeof(uint64);
			if ((m<off)||(m<(tmsize_t)sizeof(uint64))||(m>tif->tif_size)) {
				FUNC2(tif->tif_clientdata, module,
					"Can not read TIFF directory count");
				return 0;
			} else {
				FUNC9(&dircount64, tif->tif_base + off,
					    sizeof(uint64));
			}
			off += sizeof (uint64);
			if (tif->tif_flags & TIFF_SWAB)
				FUNC5(&dircount64);
			if (dircount64>4096)
			{
				FUNC2(tif->tif_clientdata, module,
				    "Sanity check on directory count failed, this is probably not a valid IFD offset");
				return 0;
			}
			dircount16 = (uint16)dircount64;
			dirsize = 20;
		}
		if (dircount16 == 0 )
		{
			FUNC2(tif->tif_clientdata, module,
			             "Sanity check on directory count failed, zero tag directories not supported");
			return 0;
		}
		origdir = FUNC7(tif, dircount16,
						dirsize,
						"to read TIFF directory");
		if (origdir == NULL)
			return 0;
		m=off+dircount16*dirsize;
		if ((m<off)||(m<(tmsize_t)(dircount16*dirsize))||(m>tif->tif_size)) {
			FUNC2(tif->tif_clientdata, module,
				     "Can not read TIFF directory");
			FUNC8(origdir);
			return 0;
		} else {
			FUNC9(origdir, tif->tif_base + off,
				    dircount16 * dirsize);
		}
		if (nextdiroff) {
			off += dircount16 * dirsize;
			if (!(tif->tif_flags&TIFF_BIGTIFF))
			{
				uint32 nextdiroff32;
				m=off+sizeof(uint32);
				if ((m<off)||(m<(tmsize_t)sizeof(uint32))||(m>tif->tif_size))
					nextdiroff32 = 0;
				else
					FUNC9(&nextdiroff32, tif->tif_base + off,
						    sizeof (uint32));
				if (tif->tif_flags&TIFF_SWAB)
					FUNC4(&nextdiroff32);
				*nextdiroff = nextdiroff32;
			}
			else
			{
				m=off+sizeof(uint64);
				if ((m<off)||(m<(tmsize_t)sizeof(uint64))||(m>tif->tif_size))
					*nextdiroff = 0;
				else
					FUNC9(nextdiroff, tif->tif_base + off,
						    sizeof (uint64));
				if (tif->tif_flags&TIFF_SWAB)
					FUNC5(nextdiroff);
			}
		}
	}
	dir = (TIFFDirEntry*)FUNC7(tif, dircount16,
						sizeof(TIFFDirEntry),
						"to read TIFF directory");
	if (dir==0)
	{
		FUNC8(origdir);
		return 0;
	}
	ma=(uint8*)origdir;
	mb=dir;
	for (n=0; n<dircount16; n++)
	{
		if (tif->tif_flags&TIFF_SWAB)
			FUNC6((uint16*)ma);
		mb->tdir_tag=*(uint16*)ma;
		ma+=sizeof(uint16);
		if (tif->tif_flags&TIFF_SWAB)
			FUNC6((uint16*)ma);
		mb->tdir_type=*(uint16*)ma;
		ma+=sizeof(uint16);
		if (!(tif->tif_flags&TIFF_BIGTIFF))
		{
			if (tif->tif_flags&TIFF_SWAB)
				FUNC4((uint32*)ma);
			mb->tdir_count=(uint64)(*(uint32*)ma);
			ma+=sizeof(uint32);
			*(uint32*)(&mb->tdir_offset)=*(uint32*)ma;
			ma+=sizeof(uint32);
		}
		else
		{
			if (tif->tif_flags&TIFF_SWAB)
				FUNC5((uint64*)ma);
                        mb->tdir_count=FUNC3(ma);
			ma+=sizeof(uint64);
			mb->tdir_offset.toff_long8=FUNC3(ma);
			ma+=sizeof(uint64);
		}
		mb++;
	}
	FUNC8(origdir);
	*pdir = dir;
	return dircount16;
}