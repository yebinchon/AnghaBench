#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int uint32_t ;
struct TYPE_6__ {int fi_openflags; void* fi_offset; } ;
struct TYPE_5__ {int /*<<< orphan*/  vip_path; } ;
struct vnode_fdinfowithpath {TYPE_2__ pfi; TYPE_1__ pvip; } ;
struct timezone {int dummy; } ;
struct stat {int st_size; int /*<<< orphan*/  st_mode; } ;
typedef  int ssize_t ;
typedef  int pid_t ;
struct TYPE_7__ {int num; int size; void* mode; void* pos; int /*<<< orphan*/  tv; scalar_t__* name; } ;
typedef  TYPE_3__ fdinfo_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  BLKGETSIZE64 ; 
 int /*<<< orphan*/  DKIOCGETBLOCKCOUNT ; 
 int /*<<< orphan*/  DKIOCGETBLOCKSIZE ; 
 int FREAD ; 
 int FWRITE ; 
 int LINE_LEN ; 
 int /*<<< orphan*/  MAXPATHLEN ; 
 int O_ACCMODE ; 
 int O_RDONLY ; 
 int O_RDWR ; 
 int O_WRONLY ; 
 void* PM_NONE ; 
 void* PM_READ ; 
 void* PM_READWRITE ; 
 void* PM_WRITE ; 
 char* PROC_PATH ; 
 int /*<<< orphan*/  PROC_PIDFDVNODEPATHINFO ; 
 int /*<<< orphan*/  PROC_PIDFDVNODEPATHINFO_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ flag_debug ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct timezone*) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 
 scalar_t__ FUNC12 (int,int,int /*<<< orphan*/ ,struct vnode_fdinfowithpath*,int /*<<< orphan*/ ) ; 
 int FUNC13 (char*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ,char*,char*,int,int) ; 
 int FUNC15 (scalar_t__*,struct stat*) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

signed char FUNC18(pid_t pid, int fdnum, fdinfo_t *fd_info)
{
struct stat stat_buf;
#ifndef __APPLE__
char fdpath[MAXPATHLEN + 1];
char line[LINE_LEN];
FILE *fp;
int flags;
#endif
struct timezone tz;

fd_info->num = fdnum;
fd_info->mode = PM_NONE;

#ifdef __APPLE__
struct vnode_fdinfowithpath vnodeInfo;
if (proc_pidfdinfo(pid, fdnum, PROC_PIDFDVNODEPATHINFO, &vnodeInfo, PROC_PIDFDVNODEPATHINFO_SIZE) <= 0)
    return 0;
strncpy(fd_info->name, vnodeInfo.pvip.vip_path, MAXPATHLEN);
#else
ssize_t len;
FUNC14(fdpath, MAXPATHLEN, "%s/%d/fd/%d", PROC_PATH, pid, fdnum);

len=FUNC13(fdpath, fd_info->name, MAXPATHLEN);
if (len != -1)
    fd_info->name[len] = 0;
else {
    //~ nperror("readlink");
    return 0;
}
#endif

if (FUNC15(fd_info->name, &stat_buf) == -1) {
    //~ printf("[debug] %i - %s\n",pid,fd_info->name);
    if (flag_debug)
        FUNC8("stat (get_fdinfo)");
    return 0;
}

if (FUNC0(stat_buf.st_mode)) {
    int fd;

    fd = FUNC9(fd_info->name, O_RDONLY);

    if (fd < 0) {
        if (flag_debug)
            FUNC8("open (get_fdinfo)");
        return 0;
    }

#ifdef __APPLE__
    uint64_t bc;
    uint32_t bs;

    bs = 0;
    bc = 0;
    if (ioctl(fd, DKIOCGETBLOCKSIZE, &bs) < 0 ||  ioctl(fd, DKIOCGETBLOCKCOUNT, &bc) < 0) {
        if (flag_debug)
            perror("ioctl (get_fdinfo)");
        return 0;
    }
    fd_info->size = bc*bs;
    printf("Size: %lld\n", fd_info->size);
#else
    if (FUNC7(fd, BLKGETSIZE64, &fd_info->size) < 0) {
        if (flag_debug)
            FUNC8("ioctl (get_fdinfo)");
        FUNC2(fd);
        return 0;
    }
#endif
    FUNC2(fd);
} else {
    fd_info->size = stat_buf.st_size;
}

#ifdef __APPLE__
fd_info->pos = vnodeInfo.pfi.fi_offset;
gettimeofday(&fd_info->tv, &tz);
if (vnodeInfo.pfi.fi_openflags & FREAD)
    fd_info->mode = PM_READ;
if (vnodeInfo.pfi.fi_openflags & FWRITE)
    fd_info->mode = PM_WRITE;
if (vnodeInfo.pfi.fi_openflags & FREAD && vnodeInfo.pfi.fi_openflags & FWRITE)
    fd_info->mode = PM_READWRITE;
#else
flags = 0;
fd_info->pos = 0;

FUNC14(fdpath, MAXPATHLEN, "%s/%d/fdinfo/%d", PROC_PATH, pid, fdnum);
fp = FUNC5(fdpath, "rt");
FUNC6(&fd_info->tv, &tz);

if (!fp) {
    if (flag_debug)
        FUNC8("fopen (get_fdinfo)");
    return 0;
}

while (FUNC4(line, LINE_LEN - 1, fp) != NULL) {
    if (!FUNC16(line, "pos:", 4))
        fd_info->pos = FUNC1(line + 5);
    if (!FUNC16(line, "flags:", 6))
        flags = FUNC1(line + 7);
}

if ((flags & O_ACCMODE) == O_RDONLY)
    fd_info->mode = PM_READ;
if ((flags & O_ACCMODE) == O_WRONLY)
    fd_info->mode = PM_WRITE;
if ((flags & O_ACCMODE) == O_RDWR)
    fd_info->mode = PM_READWRITE;

FUNC3(fp);
#endif
return 1;
}