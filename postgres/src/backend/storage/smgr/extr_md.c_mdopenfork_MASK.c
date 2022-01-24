#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ mdfd_segno; scalar_t__ mdfd_vfd; } ;
struct TYPE_8__ {scalar_t__* md_num_open_segs; TYPE_2__** md_seg_fds; int /*<<< orphan*/  smgr_rnode; } ;
typedef  TYPE_1__* SMgrRelation ;
typedef  TYPE_2__ MdfdVec ;
typedef  size_t ForkNumber ;
typedef  scalar_t__ File ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 int EXTENSION_RETURN_NULL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int O_RDWR ; 
 int PG_BINARY ; 
 scalar_t__ FUNC2 (char*,int) ; 
 scalar_t__ RELSEG_SIZE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,size_t,int) ; 
 scalar_t__ FUNC4 (TYPE_1__*,size_t,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 (int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static MdfdVec *
FUNC10(SMgrRelation reln, ForkNumber forknum, int behavior)
{
	MdfdVec    *mdfd;
	char	   *path;
	File		fd;

	/* No work if already open */
	if (reln->md_num_open_segs[forknum] > 0)
		return &reln->md_seg_fds[forknum][0];

	path = FUNC9(reln->smgr_rnode, forknum);

	fd = FUNC2(path, O_RDWR | PG_BINARY);

	if (fd < 0)
	{
		if ((behavior & EXTENSION_RETURN_NULL) &&
			FUNC1(errno))
		{
			FUNC8(path);
			return NULL;
		}
		FUNC5(ERROR,
				(FUNC6(),
				 FUNC7("could not open file \"%s\": %m", path)));
	}

	FUNC8(path);

	FUNC3(reln, forknum, 1);
	mdfd = &reln->md_seg_fds[forknum][0];
	mdfd->mdfd_vfd = fd;
	mdfd->mdfd_segno = 0;

	FUNC0(FUNC4(reln, forknum, mdfd) <= ((BlockNumber) RELSEG_SIZE));

	return mdfd;
}