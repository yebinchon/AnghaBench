
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_6__ {int fi_openflags; void* fi_offset; } ;
struct TYPE_5__ {int vip_path; } ;
struct vnode_fdinfowithpath {TYPE_2__ pfi; TYPE_1__ pvip; } ;
struct timezone {int dummy; } ;
struct stat {int st_size; int st_mode; } ;
typedef int ssize_t ;
typedef int pid_t ;
struct TYPE_7__ {int num; int size; void* mode; void* pos; int tv; scalar_t__* name; } ;
typedef TYPE_3__ fdinfo_t ;
typedef int FILE ;


 int BLKGETSIZE64 ;
 int DKIOCGETBLOCKCOUNT ;
 int DKIOCGETBLOCKSIZE ;
 int FREAD ;
 int FWRITE ;
 int LINE_LEN ;
 int MAXPATHLEN ;
 int O_ACCMODE ;
 int O_RDONLY ;
 int O_RDWR ;
 int O_WRONLY ;
 void* PM_NONE ;
 void* PM_READ ;
 void* PM_READWRITE ;
 void* PM_WRITE ;
 char* PROC_PATH ;
 int PROC_PIDFDVNODEPATHINFO ;
 int PROC_PIDFDVNODEPATHINFO_SIZE ;
 scalar_t__ S_ISBLK (int ) ;
 void* atoll (char*) ;
 int close (int) ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 scalar_t__ flag_debug ;
 int * fopen (char*,char*) ;
 int gettimeofday (int *,struct timezone*) ;
 scalar_t__ ioctl (int,int ,int*) ;
 int nperror (char*) ;
 int open (scalar_t__*,int) ;
 int perror (char*) ;
 int printf (char*,int) ;
 scalar_t__ proc_pidfdinfo (int,int,int ,struct vnode_fdinfowithpath*,int ) ;
 int readlink (char*,scalar_t__*,int ) ;
 int snprintf (char*,int ,char*,char*,int,int) ;
 int stat (scalar_t__*,struct stat*) ;
 int strncmp (char*,char*,int) ;
 int strncpy (scalar_t__*,int ,int ) ;

signed char get_fdinfo(pid_t pid, int fdnum, fdinfo_t *fd_info)
{
struct stat stat_buf;

char fdpath[MAXPATHLEN + 1];
char line[LINE_LEN];
FILE *fp;
int flags;

struct timezone tz;

fd_info->num = fdnum;
fd_info->mode = PM_NONE;







ssize_t len;
snprintf(fdpath, MAXPATHLEN, "%s/%d/fd/%d", PROC_PATH, pid, fdnum);

len=readlink(fdpath, fd_info->name, MAXPATHLEN);
if (len != -1)
    fd_info->name[len] = 0;
else {

    return 0;
}


if (stat(fd_info->name, &stat_buf) == -1) {

    if (flag_debug)
        nperror("stat (get_fdinfo)");
    return 0;
}

if (S_ISBLK(stat_buf.st_mode)) {
    int fd;

    fd = open(fd_info->name, O_RDONLY);

    if (fd < 0) {
        if (flag_debug)
            nperror("open (get_fdinfo)");
        return 0;
    }
    if (ioctl(fd, BLKGETSIZE64, &fd_info->size) < 0) {
        if (flag_debug)
            nperror("ioctl (get_fdinfo)");
        close(fd);
        return 0;
    }

    close(fd);
} else {
    fd_info->size = stat_buf.st_size;
}
flags = 0;
fd_info->pos = 0;

snprintf(fdpath, MAXPATHLEN, "%s/%d/fdinfo/%d", PROC_PATH, pid, fdnum);
fp = fopen(fdpath, "rt");
gettimeofday(&fd_info->tv, &tz);

if (!fp) {
    if (flag_debug)
        nperror("fopen (get_fdinfo)");
    return 0;
}

while (fgets(line, LINE_LEN - 1, fp) != ((void*)0)) {
    if (!strncmp(line, "pos:", 4))
        fd_info->pos = atoll(line + 5);
    if (!strncmp(line, "flags:", 6))
        flags = atoll(line + 7);
}

if ((flags & O_ACCMODE) == O_RDONLY)
    fd_info->mode = PM_READ;
if ((flags & O_ACCMODE) == O_WRONLY)
    fd_info->mode = PM_WRITE;
if ((flags & O_ACCMODE) == O_RDWR)
    fd_info->mode = PM_READWRITE;

fclose(fp);

return 1;
}
