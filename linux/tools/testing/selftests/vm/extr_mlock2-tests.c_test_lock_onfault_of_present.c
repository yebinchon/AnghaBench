
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 scalar_t__ ENOSYS ;
 int KSFT_SKIP ;
 int MAP_ANONYMOUS ;
 char* MAP_FAILED ;
 int MAP_PRIVATE ;
 int MLOCK_ONFAULT ;
 int PFN_MASK ;
 int PROT_READ ;
 int PROT_WRITE ;
 int UNEVICTABLE_BIT ;
 int _exit (int ) ;
 scalar_t__ errno ;
 int get_kpageflags (int) ;
 int get_pageflags (unsigned long) ;
 unsigned long getpagesize () ;
 int is_vma_lock_on_fault (unsigned long) ;
 scalar_t__ mlock2_ (char*,int,int ) ;
 char* mmap (int *,int,int,int,int,int ) ;
 int munmap (char*,int) ;
 int perror (char*) ;
 int printf (char*) ;

__attribute__((used)) static int test_lock_onfault_of_present()
{
 char *map;
 int ret = 1;
 unsigned long page_size = getpagesize();
 uint64_t page1_flags, page2_flags;

 map = mmap(((void*)0), 2 * page_size, PROT_READ | PROT_WRITE,
     MAP_ANONYMOUS | MAP_PRIVATE, -1, 0);
 if (map == MAP_FAILED) {
  perror("test_mlock_locked mmap");
  goto out;
 }

 *map = 'a';

 if (mlock2_(map, 2 * page_size, MLOCK_ONFAULT)) {
  if (errno == ENOSYS) {
   printf("Cannot call new mlock family, skipping test\n");
   _exit(KSFT_SKIP);
  }
  perror("mlock2(MLOCK_ONFAULT)");
  goto unmap;
 }

 page1_flags = get_pageflags((unsigned long)map);
 page2_flags = get_pageflags((unsigned long)map + page_size);
 page1_flags = get_kpageflags(page1_flags & PFN_MASK);
 page2_flags = get_kpageflags(page2_flags & PFN_MASK);


 if ((page1_flags & UNEVICTABLE_BIT) == 0) {
  printf("Failed to make present page unevictable\n");
  goto unmap;
 }

 if (!is_vma_lock_on_fault((unsigned long)map) ||
     !is_vma_lock_on_fault((unsigned long)map + page_size)) {
  printf("VMA with present pages is not marked lock on fault\n");
  goto unmap;
 }
 ret = 0;
unmap:
 munmap(map, 2 * page_size);
out:
 return ret;
}
