
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MEM_RELEASE ;
 scalar_t__ VirtualFree (void*,int ,int ) ;
 int errno ;
 int fprintf (int ,char*,int,char*) ;
 scalar_t__ munmap (void*,size_t) ;
 int stderr ;
 int stderr_last_error (char*) ;
 char* strerror (int) ;

__attribute__((used)) static void zend_mm_munmap(void *addr, size_t size)
{







 if (munmap(addr, size) != 0) {



 }

}
