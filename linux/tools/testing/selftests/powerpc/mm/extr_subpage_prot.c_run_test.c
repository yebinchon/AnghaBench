
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __NR_subpage_prot ;
 int assert (unsigned int*) ;
 int check_faulted (void*,long,long,int) ;
 int do_read (void*) ;
 int do_write (void*) ;
 int errors ;
 int free (unsigned int*) ;
 int in_test ;
 unsigned int* malloc (long) ;
 int perror (char*) ;
 int printf (char*,int) ;
 long syscall (int ,void*,unsigned long,unsigned int*) ;

__attribute__((used)) static int run_test(void *addr, unsigned long size)
{
 unsigned int *map;
 long i, j, pages, err;

 pages = size / 0x10000;
 map = malloc(pages * 4);
 assert(map);





 for (i = 0; i < pages; i++) {
  map[i] = (0x40000000 >> (((i + 1) * 2) % 32)) |
   (0xc0000000 >> (((i + 3) * 2) % 32));
 }

 err = syscall(__NR_subpage_prot, addr, size, map);
 if (err) {
  perror("subpage_perm");
  return 1;
 }
 free(map);

 in_test = 1;
 errors = 0;
 for (i = 0; i < pages; i++) {
  for (j = 0; j < 16; j++, addr += 0x1000) {
   do_read(addr);
   check_faulted(addr, i, j, 0);
   do_write(addr);
   check_faulted(addr, i, j, 1);
  }
 }

 in_test = 0;
 if (errors) {
  printf("%d errors detected\n", errors);
  return 1;
 }

 return 0;
}
