
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long NUM_PAGES ;
 int exit (int ) ;
 unsigned long getpagesize () ;
 int num_page_sizes ;
 unsigned long* page_sizes ;
 int printf (char*,unsigned long,...) ;
 unsigned long read_free (unsigned long) ;
 unsigned long read_sysfs (int ,char*) ;

void sanity_checks(void)
{
 int i;
 unsigned long largest = getpagesize();

 for (i = 0; i < num_page_sizes; i++) {
  if (page_sizes[i] > largest)
   largest = page_sizes[i];

  if (read_free(page_sizes[i]) < NUM_PAGES) {
   printf("Not enough huge pages for page size %lu MB, need %u\n",
    page_sizes[i] >> 20,
    NUM_PAGES);
   exit(0);
  }
 }

 if (read_sysfs(0, "/proc/sys/kernel/shmmax") < NUM_PAGES * largest) {
  printf("Please do echo %lu > /proc/sys/kernel/shmmax", largest * NUM_PAGES);
  exit(0);
 }


 if (largest != 1U<<30) {
  printf("No GB pages available on x86-64\n"
         "Please boot with hugepagesz=1G hugepages=%d\n", NUM_PAGES);
  exit(0);
 }

}
