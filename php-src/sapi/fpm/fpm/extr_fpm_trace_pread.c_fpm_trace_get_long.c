
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ZLOG_SYSERROR ;
 int mem_file ;
 int pread (int ,void*,int,uintptr_t) ;
 int zlog (int ,char*) ;

int fpm_trace_get_long(long addr, long *data)
{
 if (sizeof(*data) != pread(mem_file, (void *) data, sizeof(*data), (uintptr_t) addr)) {
  zlog(ZLOG_SYSERROR, "pread() failed");
  return -1;
 }
 return 0;
}
