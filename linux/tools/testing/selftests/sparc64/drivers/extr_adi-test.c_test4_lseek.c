
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int DEBUG_PRINT_L2 (char*) ;
 scalar_t__ EINVAL ;
 int OFFSET_ADD ;
 int OFFSET_SUBTRACT ;
 int RETURN_FROM_TEST (int) ;
 int SEEK_CUR ;
 int SEEK_SET ;
 int TEST_STEP_FAILURE (int) ;
 scalar_t__ errno ;
 int seek_adi (int,int,int ) ;

__attribute__((used)) static int test4_lseek(int fd)
{



 off_t offset_out, offset_in;
 int ret;


 offset_in = 0x123456789abcdef0;
 offset_out = seek_adi(fd, offset_in, SEEK_SET);
 if (offset_out != offset_in) {
  ret = -1;
  TEST_STEP_FAILURE(ret);
 }


 offset_out = seek_adi(fd, offset_in, SEEK_SET);
 if (offset_out < 0 && errno == EINVAL)
  DEBUG_PRINT_L2(
   "\tSEEK_SET failed as designed. Not an error\n");
 else {
  ret = -2;
  TEST_STEP_FAILURE(ret);
 }

 offset_out = seek_adi(fd, 0, SEEK_CUR);
 if (offset_out != offset_in) {
  ret = -3;
  TEST_STEP_FAILURE(ret);
 }

 offset_out = seek_adi(fd, (0x100), SEEK_CUR);
 if (offset_out != (offset_in + (0x100))) {
  ret = -4;
  TEST_STEP_FAILURE(ret);
 }

 offset_out = seek_adi(fd, (0xFFFFFFF000000000), SEEK_CUR);
 if (offset_out != (offset_in + (0x100) + (0xFFFFFFF000000000))) {
  ret = -5;
  TEST_STEP_FAILURE(ret);
 }

 ret = 0;
out:
 RETURN_FROM_TEST(ret);
}
