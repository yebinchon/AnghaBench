
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int new_link_file ;
typedef int existing_file ;
struct TYPE_4__ {char* pgdata; } ;
struct TYPE_3__ {char* pgdata; } ;


 int COPYFILE_CLONE_FORCE ;
 int FICLONE ;
 int MAXPGPATH ;
 int O_CREAT ;
 int O_EXCL ;
 int O_RDONLY ;
 int O_RDWR ;
 int PG_BINARY ;
 int close (int) ;
 scalar_t__ copyfile (char*,char*,int *,int ) ;
 int errno ;
 scalar_t__ ioctl (int,int ,int) ;
 TYPE_2__ new_cluster ;
 TYPE_1__ old_cluster ;
 int open (char*,int,int ) ;
 int pg_fatal (char*,...) ;
 int pg_file_create_mode ;
 int snprintf (char*,int,char*,char*) ;
 int strerror (int ) ;
 int unlink (char*) ;

void
check_file_clone(void)
{
 char existing_file[MAXPGPATH];
 char new_link_file[MAXPGPATH];

 snprintf(existing_file, sizeof(existing_file), "%s/PG_VERSION", old_cluster.pgdata);
 snprintf(new_link_file, sizeof(new_link_file), "%s/PG_VERSION.clonetest", new_cluster.pgdata);
 unlink(new_link_file);
 pg_fatal("file cloning not supported on this platform\n");


 unlink(new_link_file);
}
