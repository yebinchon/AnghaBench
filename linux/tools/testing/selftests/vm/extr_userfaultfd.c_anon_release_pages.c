
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MADV_DONTNEED ;
 scalar_t__ madvise (char*,int,int ) ;
 int nr_pages ;
 int page_size ;
 int perror (char*) ;

__attribute__((used)) static int anon_release_pages(char *rel_area)
{
 int ret = 0;

 if (madvise(rel_area, nr_pages * page_size, MADV_DONTNEED)) {
  perror("madvise");
  ret = 1;
 }

 return ret;
}
