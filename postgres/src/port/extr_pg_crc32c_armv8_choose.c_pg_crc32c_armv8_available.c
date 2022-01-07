
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;
typedef int data ;


 int DEBUG1 ;
 int ERROR ;
 int SIGILL ;
 int SIG_DFL ;
 int elog (int ,char*,...) ;
 int illegal_instruction_handler ;
 int illegal_instruction_jump ;
 scalar_t__ pg_comp_crc32c_armv8 (int ,int*,int) ;
 scalar_t__ pg_comp_crc32c_sb8 (int ,int*,int) ;
 int pqsignal (int ,int ) ;
 scalar_t__ sigsetjmp (int ,int) ;

__attribute__((used)) static bool
pg_crc32c_armv8_available(void)
{
 uint64 data = 42;
 int result;





 pqsignal(SIGILL, illegal_instruction_handler);
 if (sigsetjmp(illegal_instruction_jump, 1) == 0)
 {

  result = (pg_comp_crc32c_armv8(0, &data, sizeof(data)) ==
      pg_comp_crc32c_sb8(0, &data, sizeof(data)));
 }
 else
 {

  result = -1;
 }
 pqsignal(SIGILL, SIG_DFL);



 if (result == 0)
  elog(ERROR, "crc32 hardware and software results disagree");

 elog(DEBUG1, "using armv8 crc32 hardware = %d", (result > 0));


 return (result > 0);
}
