
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ off_t ;


 scalar_t__ ENOSYS ;
 int FATAL ;
 void* MAP_FAILED ;
 int MAP_SHARED ;
 int MS_ASYNC ;
 int POSIX_FADV_DONTNEED ;
 int PROT_READ ;
 int SEEK_END ;
 scalar_t__ SSIZE_MAX ;
 int SYNC_FILE_RANGE_WRITE ;
 int WARNING ;
 int _SC_PAGESIZE ;
 int data_sync_elevel (int) ;
 int enableFsync ;
 int ereport (int,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*) ;
 scalar_t__ errno ;
 scalar_t__ lseek (int,int ,int ) ;
 void* mmap (int *,scalar_t__,int ,int ,int,scalar_t__) ;
 int msync (void*,size_t,int ) ;
 int munmap (void*,size_t) ;
 int posix_fadvise (int,scalar_t__,scalar_t__,int ) ;
 int sync_file_range (int,scalar_t__,scalar_t__,int ) ;
 int sysconf (int ) ;

void
pg_flush_data(int fd, off_t offset, off_t nbytes)
{






 if (!enableFsync)
  return;
}
