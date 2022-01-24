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
typedef  size_t uint64 ;
typedef  size_t uint32 ;
typedef  scalar_t__ uint16 ;
typedef  int /*<<< orphan*/  tmsize_t ;
struct TYPE_10__ {size_t toff_long8; } ;
struct TYPE_9__ {int tif_flags; size_t tif_dataoff; int /*<<< orphan*/  tif_clientdata; } ;
struct TYPE_8__ {scalar_t__ tdir_tag; size_t tdir_count; TYPE_3__ tdir_offset; scalar_t__ tdir_type; } ;
typedef  TYPE_1__ TIFFDirEntry ;
typedef  TYPE_2__ TIFF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (size_t*) ; 
 int /*<<< orphan*/  FUNC3 (size_t*) ; 
 int TIFF_BIGTIFF ; 
 int TIFF_SWAB ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,size_t*,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int
FUNC7(TIFF* tif, uint32* ndir, TIFFDirEntry* dir, uint16 tag, uint16 datatype, uint32 count, uint32 datalength, void* data)
{
	static const char module[] = "TIFFWriteDirectoryTagData";
	uint32 m;
	m=0;
	while (m<(*ndir))
	{
		FUNC6(dir[m].tdir_tag!=tag);
		if (dir[m].tdir_tag>tag)
			break;
		m++;
	}
	if (m<(*ndir))
	{
		uint32 n;
		for (n=*ndir; n>m; n--)
			dir[n]=dir[n-1];
	}
	dir[m].tdir_tag=tag;
	dir[m].tdir_type=datatype;
	dir[m].tdir_count=count;
	dir[m].tdir_offset.toff_long8 = 0;
	if (datalength<=((tif->tif_flags&TIFF_BIGTIFF)?0x8U:0x4U))
		FUNC5(&dir[m].tdir_offset,data,datalength);
	else
	{
		uint64 na,nb;
		na=tif->tif_dataoff;
		nb=na+datalength;
		if (!(tif->tif_flags&TIFF_BIGTIFF))
			nb=(uint32)nb;
		if ((nb<na)||(nb<datalength))
		{
			FUNC1(tif->tif_clientdata,module,"Maximum TIFF file size exceeded");
			return(0);
		}
		if (!FUNC0(tif,na))
		{
			FUNC1(tif->tif_clientdata,module,"IO error writing tag data");
			return(0);
		}
		FUNC6(datalength<0x80000000UL);
		if (!FUNC4(tif,data,(tmsize_t)datalength))
		{
			FUNC1(tif->tif_clientdata,module,"IO error writing tag data");
			return(0);
		}
		tif->tif_dataoff=nb;
		if (tif->tif_dataoff&1)
			tif->tif_dataoff++;
		if (!(tif->tif_flags&TIFF_BIGTIFF))
		{
			uint32 o;
			o=(uint32)na;
			if (tif->tif_flags&TIFF_SWAB)
				FUNC2(&o);
			FUNC5(&dir[m].tdir_offset,&o,4);
		}
		else
		{
			dir[m].tdir_offset.toff_long8 = na;
			if (tif->tif_flags&TIFF_SWAB)
				FUNC3(&dir[m].tdir_offset.toff_long8);
		}
	}
	(*ndir)++;
	return(1);
}