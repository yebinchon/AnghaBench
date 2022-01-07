
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crtdll_stat {int st_ctime; int st_mtime; int st_atime; int st_size; int st_rdev; int st_gid; int st_uid; int st_nlink; int st_mode; int st_ino; int st_dev; } ;
struct _stat {int st_ctime; int st_mtime; int st_atime; int st_size; int st_rdev; int st_gid; int st_uid; int st_nlink; int st_mode; int st_ino; int st_dev; } ;



__attribute__((used)) static void convert_struct_stat( struct crtdll_stat *dst, const struct _stat *src )
{
    dst->st_dev = src->st_dev;
    dst->st_ino = src->st_ino;
    dst->st_mode = src->st_mode;
    dst->st_nlink = src->st_nlink;
    dst->st_uid = src->st_uid;
    dst->st_gid = src->st_gid;
    dst->st_rdev = src->st_rdev;
    dst->st_size = src->st_size;
    dst->st_atime = src->st_atime;
    dst->st_mtime = src->st_mtime;
    dst->st_ctime = src->st_ctime;
}
