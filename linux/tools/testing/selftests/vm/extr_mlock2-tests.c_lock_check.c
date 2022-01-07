
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 char* LOCKED ;
 int PFN_MASK ;
 int PRESENT_BIT ;
 int UNEVICTABLE_BIT ;
 int get_kpageflags (int) ;
 int get_pageflags (unsigned long) ;
 unsigned long getpagesize () ;
 int is_vmflag_set (unsigned long,char*) ;
 int printf (char*,...) ;

__attribute__((used)) static int lock_check(char *map)
{
 unsigned long page_size = getpagesize();
 uint64_t page1_flags, page2_flags;

 page1_flags = get_pageflags((unsigned long)map);
 page2_flags = get_pageflags((unsigned long)map + page_size);


 if (((page1_flags & PRESENT_BIT) == 0) ||
     ((page2_flags & PRESENT_BIT) == 0)) {
  printf("Failed to make both pages present\n");
  return 1;
 }

 page1_flags = get_kpageflags(page1_flags & PFN_MASK);
 page2_flags = get_kpageflags(page2_flags & PFN_MASK);


 if (((page1_flags & UNEVICTABLE_BIT) == 0) ||
     ((page2_flags & UNEVICTABLE_BIT) == 0)) {
  printf("Failed to make both pages unevictable\n");
  return 1;
 }

 if (!is_vmflag_set((unsigned long)map, LOCKED)) {
  printf("VMA flag %s is missing on page 1\n", LOCKED);
  return 1;
 }

 if (!is_vmflag_set((unsigned long)map + page_size, LOCKED)) {
  printf("VMA flag %s is missing on page 2\n", LOCKED);
  return 1;
 }

 return 0;
}
