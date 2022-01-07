
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int device; TYPE_1__* fs; scalar_t__ size; } ;
struct TYPE_9__ {TYPE_3__* file; } ;
struct TYPE_8__ {int (* dir ) (int ,char*,int ,int ) ;int (* close ) (TYPE_3__*) ;int (* read ) (TYPE_3__*,char*,scalar_t__) ;int (* open ) (TYPE_3__*,char*) ;} ;
typedef TYPE_2__ GrubFS ;


 int dirhook ;
 int grub_ext2_fs ;
 int grubfs_free (TYPE_2__*) ;
 TYPE_2__* grubfs_new (int *,int *) ;
 int printf (char*,int) ;
 int stub1 (TYPE_3__*,char*) ;
 int stub2 (TYPE_3__*,char*,scalar_t__) ;
 int stub3 (TYPE_3__*) ;
 int stub4 (int ,char*,int ,int ) ;
 int write (int,char*,scalar_t__) ;

int foo_main() {
 char buf[1024];
 GrubFS *gfs = grubfs_new (&grub_ext2_fs, ((void*)0));
 gfs->file->fs->open (gfs->file, "/test");
 gfs->file->fs->read (gfs->file, buf, gfs->file->size);
printf ("fs = %d\n", (int)gfs->file->size);
 write (1, buf, gfs->file->size);
 gfs->file->fs->close (gfs->file);
 gfs->file->fs->dir (gfs->file->device, "/", dirhook, 0);
 grubfs_free (gfs);
 return 0;
}
