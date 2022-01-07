
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int FAIL_IF (int) ;
 int SKIP_IF (int) ;
 int SPRN_BESCR ;
 int SPRN_EBBHR ;
 int ebb_is_supported () ;
 int mfspr (int ) ;
 int mtspr (int ,int) ;

int reg_access(void)
{
 uint64_t val, expected;

 SKIP_IF(!ebb_is_supported());

 expected = 0x8000000100000000ull;
 mtspr(SPRN_BESCR, expected);
 val = mfspr(SPRN_BESCR);

 FAIL_IF(val != expected);

 expected = 0x0000000001000000ull;
 mtspr(SPRN_EBBHR, expected);
 val = mfspr(SPRN_EBBHR);

 FAIL_IF(val != expected);

 return 0;
}
