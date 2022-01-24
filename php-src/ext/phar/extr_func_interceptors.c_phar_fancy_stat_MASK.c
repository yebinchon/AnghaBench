#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_3__ {scalar_t__ st_uid; scalar_t__ st_gid; int st_mode; int st_ino; int st_size; int st_atime; int st_mtime; int st_ctime; int st_dev; int st_nlink; int st_rdev; int st_blksize; int st_blocks; } ;
typedef  TYPE_1__ zend_stat_t ;
typedef  int /*<<< orphan*/  zend_long ;
typedef  scalar_t__ gid_t ;

/* Variables and functions */
 int /*<<< orphan*/  E_NOTICE ; 
 int /*<<< orphan*/  E_WARNING ; 
#define  FS_ATIME 147 
#define  FS_CTIME 146 
#define  FS_EXISTS 145 
#define  FS_GROUP 144 
#define  FS_INODE 143 
#define  FS_IS_DIR 142 
#define  FS_IS_FILE 141 
#define  FS_IS_LINK 140 
#define  FS_IS_R 139 
#define  FS_IS_W 138 
#define  FS_IS_X 137 
#define  FS_LSTAT 136 
#define  FS_MTIME 135 
#define  FS_OWNER 134 
#define  FS_PERMS 133 
#define  FS_SIZE 132 
#define  FS_STAT 131 
#define  FS_TYPE 130 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  RETURN_FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  RETURN_TRUE ; 
#define  S_IFDIR 129 
 int S_IFMT ; 
#define  S_IFREG 128 
 int S_IRGRP ; 
 int S_IROTH ; 
 int S_IRUSR ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int S_IWGRP ; 
 int S_IWOTH ; 
 int S_IWUSR ; 
 int S_IXGRP ; 
 int S_IXOTH ; 
 int S_IXUSR ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*) ; 
 scalar_t__ FUNC10 () ; 
 int FUNC11 (int,scalar_t__*) ; 
 scalar_t__ FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC14 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC18(zend_stat_t *stat_sb, int type, zval *return_value)
{
	zval stat_dev, stat_ino, stat_mode, stat_nlink, stat_uid, stat_gid, stat_rdev,
		 stat_size, stat_atime, stat_mtime, stat_ctime, stat_blksize, stat_blocks;
	int rmask=S_IROTH, wmask=S_IWOTH, xmask=S_IXOTH; /* access rights defaults to other */
	char *stat_sb_names[13] = {
		"dev", "ino", "mode", "nlink", "uid", "gid", "rdev",
		"size", "atime", "mtime", "ctime", "blksize", "blocks"
	};

	if (type >= FS_IS_W && type <= FS_IS_X) {
		if(stat_sb->st_uid==FUNC12()) {
			rmask=S_IRUSR;
			wmask=S_IWUSR;
			xmask=S_IXUSR;
		} else if(stat_sb->st_gid==FUNC10()) {
			rmask=S_IRGRP;
			wmask=S_IWGRP;
			xmask=S_IXGRP;
		} else {
			int   groups, n, i;
			gid_t *gids;

			groups = FUNC11(0, NULL);
			if(groups > 0) {
				gids=(gid_t *)FUNC14(groups, sizeof(gid_t), 0);
				n=FUNC11(groups, gids);
				for(i=0;i<n;++i){
					if(stat_sb->st_gid==gids[i]) {
						rmask=S_IRGRP;
						wmask=S_IWGRP;
						xmask=S_IXGRP;
						break;
					}
				}
				FUNC9(gids);
			}
		}
	}

	switch (type) {
	case FS_PERMS:
		FUNC1((zend_long)stat_sb->st_mode);
	case FS_INODE:
		FUNC1((zend_long)stat_sb->st_ino);
	case FS_SIZE:
		FUNC1((zend_long)stat_sb->st_size);
	case FS_OWNER:
		FUNC1((zend_long)stat_sb->st_uid);
	case FS_GROUP:
		FUNC1((zend_long)stat_sb->st_gid);
	case FS_ATIME:
		FUNC1((zend_long)stat_sb->st_atime);
	case FS_MTIME:
		FUNC1((zend_long)stat_sb->st_mtime);
	case FS_CTIME:
		FUNC1((zend_long)stat_sb->st_ctime);
	case FS_TYPE:
		if (FUNC4(stat_sb->st_mode)) {
			FUNC2("link");
		}
		switch(stat_sb->st_mode & S_IFMT) {
		case S_IFDIR: FUNC2("dir");
		case S_IFREG: FUNC2("file");
		}
		FUNC13(NULL, E_NOTICE, "Unknown file type (%u)", stat_sb->st_mode & S_IFMT);
		FUNC2("unknown");
	case FS_IS_W:
		FUNC0((stat_sb->st_mode & wmask) != 0);
	case FS_IS_R:
		FUNC0((stat_sb->st_mode&rmask)!=0);
	case FS_IS_X:
		FUNC0((stat_sb->st_mode&xmask)!=0 && !FUNC3(stat_sb->st_mode));
	case FS_IS_FILE:
		FUNC0(FUNC5(stat_sb->st_mode));
	case FS_IS_DIR:
		FUNC0(FUNC3(stat_sb->st_mode));
	case FS_IS_LINK:
		FUNC0(FUNC4(stat_sb->st_mode));
	case FS_EXISTS:
		RETURN_TRUE; /* the false case was done earlier */
	case FS_LSTAT:
		/* FALLTHROUGH */
	case FS_STAT:
		FUNC8(return_value);

		FUNC6(&stat_dev, stat_sb->st_dev);
		FUNC6(&stat_ino, stat_sb->st_ino);
		FUNC6(&stat_mode, stat_sb->st_mode);
		FUNC6(&stat_nlink, stat_sb->st_nlink);
		FUNC6(&stat_uid, stat_sb->st_uid);
		FUNC6(&stat_gid, stat_sb->st_gid);
#ifdef HAVE_STRUCT_STAT_ST_RDEV
		ZVAL_LONG(&stat_rdev, stat_sb->st_rdev);
#else
		FUNC6(&stat_rdev, -1);
#endif
		FUNC6(&stat_size, stat_sb->st_size);
		FUNC6(&stat_atime, stat_sb->st_atime);
		FUNC6(&stat_mtime, stat_sb->st_mtime);
		FUNC6(&stat_ctime, stat_sb->st_ctime);
#ifdef HAVE_STRUCT_STAT_ST_BLKSIZE
		ZVAL_LONG(&stat_blksize, stat_sb->st_blksize);
#else
		FUNC6(&stat_blksize,-1);
#endif
#ifdef HAVE_STRUCT_STAT_ST_BLOCKS
		ZVAL_LONG(&stat_blocks, stat_sb->st_blocks);
#else
		FUNC6(&stat_blocks,-1);
#endif
		/* Store numeric indexes in proper order */
		FUNC16(FUNC7(return_value), &stat_dev);
		FUNC16(FUNC7(return_value), &stat_ino);
		FUNC16(FUNC7(return_value), &stat_mode);
		FUNC16(FUNC7(return_value), &stat_nlink);
		FUNC16(FUNC7(return_value), &stat_uid);
		FUNC16(FUNC7(return_value), &stat_gid);

		FUNC16(FUNC7(return_value), &stat_rdev);
		FUNC16(FUNC7(return_value), &stat_size);
		FUNC16(FUNC7(return_value), &stat_atime);
		FUNC16(FUNC7(return_value), &stat_mtime);
		FUNC16(FUNC7(return_value), &stat_ctime);
		FUNC16(FUNC7(return_value), &stat_blksize);
		FUNC16(FUNC7(return_value), &stat_blocks);

		/* Store string indexes referencing the same zval*/
		FUNC17(FUNC7(return_value), stat_sb_names[0], FUNC15(stat_sb_names[0]), &stat_dev);
		FUNC17(FUNC7(return_value), stat_sb_names[1], FUNC15(stat_sb_names[1]), &stat_ino);
		FUNC17(FUNC7(return_value), stat_sb_names[2], FUNC15(stat_sb_names[2]), &stat_mode);
		FUNC17(FUNC7(return_value), stat_sb_names[3], FUNC15(stat_sb_names[3]), &stat_nlink);
		FUNC17(FUNC7(return_value), stat_sb_names[4], FUNC15(stat_sb_names[4]), &stat_uid);
		FUNC17(FUNC7(return_value), stat_sb_names[5], FUNC15(stat_sb_names[5]), &stat_gid);
		FUNC17(FUNC7(return_value), stat_sb_names[6], FUNC15(stat_sb_names[6]), &stat_rdev);
		FUNC17(FUNC7(return_value), stat_sb_names[7], FUNC15(stat_sb_names[7]), &stat_size);
		FUNC17(FUNC7(return_value), stat_sb_names[8], FUNC15(stat_sb_names[8]), &stat_atime);
		FUNC17(FUNC7(return_value), stat_sb_names[9], FUNC15(stat_sb_names[9]), &stat_mtime);
		FUNC17(FUNC7(return_value), stat_sb_names[10], FUNC15(stat_sb_names[10]), &stat_ctime);
		FUNC17(FUNC7(return_value), stat_sb_names[11], FUNC15(stat_sb_names[11]), &stat_blksize);
		FUNC17(FUNC7(return_value), stat_sb_names[12], FUNC15(stat_sb_names[12]), &stat_blocks);

		return;
	}
	FUNC13(NULL, E_WARNING, "Didn't understand stat call");
	RETURN_FALSE;
}