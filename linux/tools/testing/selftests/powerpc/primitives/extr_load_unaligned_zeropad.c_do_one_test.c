
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FAIL_IF (int ) ;
 unsigned long load_unaligned_zeropad (char*) ;
 int printf (char*,int,unsigned long,unsigned long) ;
 int protect_region () ;
 int unprotect_region () ;

__attribute__((used)) static int do_one_test(char *p, int page_offset)
{
 unsigned long should;
 unsigned long got;

 FAIL_IF(unprotect_region());
 should = *(unsigned long *)p;
 FAIL_IF(protect_region());

 got = load_unaligned_zeropad(p);

 if (should != got) {
  printf("offset %u load_unaligned_zeropad returned 0x%lx, should be 0x%lx\n", page_offset, got, should);
  return 1;
 }

 return 0;
}
