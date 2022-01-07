
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FAIL_IF (int) ;
 int MAP_ANONYMOUS ;
 unsigned long* MAP_FAILED ;
 int MAP_PRIVATE ;
 int PROT_READ ;
 int PROT_WRITE ;
 int do_one_test (unsigned long*,unsigned long) ;
 int getpagesize () ;
 unsigned long* mem_region ;
 int memset (unsigned long*,int ,int) ;
 unsigned long* mmap (int *,int,int,int,int,int ) ;
 int page_size ;
 int setup_segv_handler () ;

__attribute__((used)) static int test_body(void)
{
 unsigned long i;

 page_size = getpagesize();
 mem_region = mmap(((void*)0), page_size * 2, PROT_READ|PROT_WRITE,
  MAP_PRIVATE|MAP_ANONYMOUS, -1, 0);

 FAIL_IF(mem_region == MAP_FAILED);

 for (i = 0; i < page_size; i++)
  mem_region[i] = i;

 memset(mem_region+page_size, 0, page_size);

 setup_segv_handler();

 for (i = 0; i < page_size; i++)
  FAIL_IF(do_one_test(mem_region+i, i));

 return 0;
}
