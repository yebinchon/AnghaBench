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
typedef  int /*<<< orphan*/  uint32 ;
typedef  scalar_t__ uint16 ;
struct TYPE_5__ {int td_samplesperpixel; } ;
struct TYPE_6__ {TYPE_1__ tif_dir; int /*<<< orphan*/  tif_clientdata; } ;
typedef  int /*<<< orphan*/  TIFFDirEntry ;
typedef  TYPE_2__ TIFF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,char*) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 scalar_t__* FUNC3 (int) ; 

__attribute__((used)) static int
FUNC4(TIFF* tif, uint32* ndir, TIFFDirEntry* dir, uint16 tag, uint16 value)
{
	static const char module[] = "TIFFWriteDirectoryTagShortPerSample";
	uint16* m;
	uint16* na;
	uint16 nb;
	int o;
	if (dir==NULL)
	{
		(*ndir)++;
		return(1);
	}
	m=FUNC3(tif->tif_dir.td_samplesperpixel*sizeof(uint16));
	if (m==NULL)
	{
		FUNC0(tif->tif_clientdata,module,"Out of memory");
		return(0);
	}
	for (na=m, nb=0; nb<tif->tif_dir.td_samplesperpixel; na++, nb++)
		*na=value;
	o=FUNC1(tif,ndir,dir,tag,tif->tif_dir.td_samplesperpixel,m);
	FUNC2(m);
	return(o);
}