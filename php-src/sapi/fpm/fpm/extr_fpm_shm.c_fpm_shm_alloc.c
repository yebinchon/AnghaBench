
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAP_ANONYMOUS ;
 void* MAP_FAILED ;
 int MAP_SHARED ;
 int PROT_READ ;
 int PROT_WRITE ;
 int ZLOG_SYSERROR ;
 int errno ;
 size_t fpm_shm_size ;
 void* mmap (int ,size_t,int,int,int,int ) ;
 int strerror (int ) ;
 int zlog (int ,char*,size_t,...) ;

void *fpm_shm_alloc(size_t size)
{
 void *mem;

 mem = mmap(0, size, PROT_READ | PROT_WRITE, MAP_ANONYMOUS | MAP_SHARED, -1, 0);
 if (!mem) {
  zlog(ZLOG_SYSERROR, "unable to allocate %zu bytes in shared memory", size);
  return ((void*)0);
 }

 fpm_shm_size += size;
 return mem;
}
