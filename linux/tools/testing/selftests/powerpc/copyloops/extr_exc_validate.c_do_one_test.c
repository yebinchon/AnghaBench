
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long COPY_LOOP (char*,char*,unsigned long) ;
 int printf (char*,char*,char*,unsigned long,unsigned long,unsigned long) ;
 unsigned long test_copy_tofrom_user_reference (char*,char*,unsigned long) ;
 int total_failed ;
 int total_passed ;

__attribute__((used)) static void do_one_test(char *dstp, char *srcp, unsigned long len)
{
 unsigned long got, expected;

 got = COPY_LOOP(dstp, srcp, len);
 expected = test_copy_tofrom_user_reference(dstp, srcp, len);

 if (got != expected) {
  total_failed++;
  printf("FAIL from=%p to=%p len=%ld returned %ld, expected %ld\n",
         srcp, dstp, len, got, expected);

 } else
  total_passed++;
}
