#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct jffs2_unknown_node {int dummy; } ;
struct jffs2_raw_inode {int totlen; int ino; int mode; int version; scalar_t__ data_crc; void* node_crc; scalar_t__ dsize; scalar_t__ csize; scalar_t__ isize; scalar_t__ mtime; scalar_t__ ctime; scalar_t__ atime; scalar_t__ gid; scalar_t__ uid; void* hdr_crc; int /*<<< orphan*/  nodetype; int /*<<< orphan*/  magic; } ;
typedef  int /*<<< orphan*/  ri ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  JFFS2_MAGIC_BITMASK ; 
 int /*<<< orphan*/  JFFS2_NODETYPE_INODE ; 
 int S_IFDIR ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ,int) ; 
 void* FUNC3 (int /*<<< orphan*/ ,struct jffs2_raw_inode*,int) ; 
 int erasesize ; 
 int /*<<< orphan*/  FUNC4 (struct jffs2_raw_inode*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 () ; 

__attribute__((used)) static int FUNC8(const char *name, int parent)
{
	struct jffs2_raw_inode ri;
	int inode;

	inode = FUNC2(name, FUNC0(S_IFDIR), parent);

	if (FUNC7() < sizeof(ri))
		FUNC5(erasesize);
	FUNC6();

	FUNC4(&ri, 0, sizeof(ri));
	ri.magic = JFFS2_MAGIC_BITMASK;
	ri.nodetype = JFFS2_NODETYPE_INODE;
	ri.totlen = sizeof(ri);
	ri.hdr_crc = FUNC3(0, &ri, sizeof(struct jffs2_unknown_node) - 4);

	ri.ino = inode;
	ri.mode = S_IFDIR | 0755;
	ri.uid = ri.gid = 0;
	ri.atime = ri.ctime = ri.mtime = 0;
	ri.isize = ri.csize = ri.dsize = 0;
	ri.version = 1;
	ri.node_crc = FUNC3(0, &ri, sizeof(ri) - 8);
	ri.data_crc = 0;

	FUNC1((char *) &ri, sizeof(ri));
	FUNC5(4);
	return inode;
}