
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int Size ;


 int FSM_CAT_STEP ;
 int MaxFSMRequestSize ;

__attribute__((used)) static Size
fsm_space_cat_to_avail(uint8 cat)
{

 if (cat == 255)
  return MaxFSMRequestSize;
 else
  return cat * FSM_CAT_STEP;
}
