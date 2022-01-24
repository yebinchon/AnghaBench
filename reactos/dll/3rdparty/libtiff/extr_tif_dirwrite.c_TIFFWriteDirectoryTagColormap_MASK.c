#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32 ;
typedef  int /*<<< orphan*/  uint16 ;
struct TYPE_5__ {int td_bitspersample; int /*<<< orphan*/ * td_colormap; } ;
struct TYPE_6__ {TYPE_1__ tif_dir; int /*<<< orphan*/  tif_clientdata; } ;
typedef  int /*<<< orphan*/  TIFFDirEntry ;
typedef  TYPE_2__ TIFF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,char*) ; 
 int /*<<< orphan*/  TIFFTAG_COLORMAP ; 
 int FUNC1 (TYPE_2__*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(TIFF* tif, uint32* ndir, TIFFDirEntry* dir)
{
	static const char module[] = "TIFFWriteDirectoryTagColormap";
	uint32 m;
	uint16* n;
	int o;
	if (dir==NULL)
	{
		(*ndir)++;
		return(1);
	}
	m=(1<<tif->tif_dir.td_bitspersample);
	n=FUNC3(3*m*sizeof(uint16));
	if (n==NULL)
	{
		FUNC0(tif->tif_clientdata,module,"Out of memory");
		return(0);
	}
	FUNC4(&n[0],tif->tif_dir.td_colormap[0],m*sizeof(uint16));
	FUNC4(&n[m],tif->tif_dir.td_colormap[1],m*sizeof(uint16));
	FUNC4(&n[2*m],tif->tif_dir.td_colormap[2],m*sizeof(uint16));
	o=FUNC1(tif,ndir,dir,TIFFTAG_COLORMAP,3*m,n);
	FUNC2(n);
	return(o);
}