
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALLOC_FL_KEEP_SIZE ;
 int FALLOC_FL_PUNCH_HOLE ;
 scalar_t__ fallocate (int ,int,int,int) ;
 int huge_fd ;
 char* huge_fd_off0 ;
 int nr_pages ;
 int page_size ;
 int perror (char*) ;

__attribute__((used)) static int hugetlb_release_pages(char *rel_area)
{
 int ret = 0;

 if (fallocate(huge_fd, FALLOC_FL_PUNCH_HOLE | FALLOC_FL_KEEP_SIZE,
    rel_area == huge_fd_off0 ? 0 :
    nr_pages * page_size,
    nr_pages * page_size)) {
  perror("fallocate");
  ret = 1;
 }

 return ret;
}
