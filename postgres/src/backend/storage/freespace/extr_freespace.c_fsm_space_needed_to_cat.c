
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef scalar_t__ Size ;


 int ERROR ;
 scalar_t__ FSM_CAT_STEP ;
 scalar_t__ MaxFSMRequestSize ;
 int elog (int ,char*,scalar_t__) ;

__attribute__((used)) static uint8
fsm_space_needed_to_cat(Size needed)
{
 int cat;


 if (needed > MaxFSMRequestSize)
  elog(ERROR, "invalid FSM request size %zu", needed);

 if (needed == 0)
  return 1;

 cat = (needed + FSM_CAT_STEP - 1) / FSM_CAT_STEP;

 if (cat > 255)
  cat = 255;

 return (uint8) cat;
}
