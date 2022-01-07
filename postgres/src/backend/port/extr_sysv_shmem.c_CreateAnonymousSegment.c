
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Size ;


 int Assert (int) ;
 int DEBUG1 ;
 int ENOMEM ;
 int FATAL ;
 int GetHugePageSize (int*,int*) ;
 scalar_t__ HUGE_PAGES_ON ;
 scalar_t__ HUGE_PAGES_TRY ;
 void* MAP_FAILED ;
 int PG_MMAP_FLAGS ;
 int PROT_READ ;
 int PROT_WRITE ;
 int elog (int ,char*,int) ;
 int ereport (int ,int ) ;
 int errhint (char*,int) ;
 int errmsg (char*) ;
 int errno ;
 scalar_t__ huge_pages ;
 void* mmap (int *,int,int,int,int,int ) ;

__attribute__((used)) static void *
CreateAnonymousSegment(Size *size)
{
 Size allocsize = *size;
 void *ptr = MAP_FAILED;
 int mmap_errno = 0;



 Assert(huge_pages != HUGE_PAGES_ON);
 if (ptr == MAP_FAILED && huge_pages != HUGE_PAGES_ON)
 {




  allocsize = *size;
  ptr = mmap(((void*)0), allocsize, PROT_READ | PROT_WRITE,
       PG_MMAP_FLAGS, -1, 0);
  mmap_errno = errno;
 }

 if (ptr == MAP_FAILED)
 {
  errno = mmap_errno;
  ereport(FATAL,
    (errmsg("could not map anonymous shared memory: %m"),
     (mmap_errno == ENOMEM) ?
     errhint("This error usually means that PostgreSQL's request "
       "for a shared memory segment exceeded available memory, "
       "swap space, or huge pages. To reduce the request size "
       "(currently %zu bytes), reduce PostgreSQL's shared "
       "memory usage, perhaps by reducing shared_buffers or "
       "max_connections.",
       *size) : 0));
 }

 *size = allocsize;
 return ptr;
}
