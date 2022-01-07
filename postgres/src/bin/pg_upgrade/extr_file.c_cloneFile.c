
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COPYFILE_CLONE_FORCE ;
 int FICLONE ;
 int O_CREAT ;
 int O_EXCL ;
 int O_RDONLY ;
 int O_RDWR ;
 int PG_BINARY ;
 int close (int) ;
 scalar_t__ copyfile (char const*,char const*,int *,int ) ;
 int errno ;
 scalar_t__ ioctl (int,int ,int) ;
 int open (char const*,int,int ) ;
 int pg_fatal (char*,char const*,char const*,char const*,char const*,...) ;
 int pg_file_create_mode ;
 int strerror (int ) ;
 int unlink (char const*) ;

void
cloneFile(const char *src, const char *dst,
    const char *schemaName, const char *relName)
{
}
