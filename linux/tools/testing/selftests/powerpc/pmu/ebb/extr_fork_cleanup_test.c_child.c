
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FAIL_IF (int) ;
 int SPRN_BESCR ;
 int SPRN_EBBHR ;
 int SPRN_EBBRR ;
 int catch_sigill (int ) ;
 int event ;
 int event_read (int *) ;
 scalar_t__ mfspr (int ) ;
 int write_pmc1 ;

__attribute__((used)) static int child(void)
{

 FAIL_IF(mfspr(SPRN_BESCR) != 0);
 FAIL_IF(mfspr(SPRN_EBBHR) != 0);
 FAIL_IF(mfspr(SPRN_EBBRR) != 0);

 FAIL_IF(catch_sigill(write_pmc1));


 FAIL_IF(event_read(&event));

 return 0;
}
