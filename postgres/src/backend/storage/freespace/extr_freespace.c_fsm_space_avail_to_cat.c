
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int Size ;


 int Assert (int) ;
 int BLCKSZ ;
 int FSM_CAT_STEP ;
 int MaxFSMRequestSize ;

__attribute__((used)) static uint8
fsm_space_avail_to_cat(Size avail)
{
 int cat;

 Assert(avail < BLCKSZ);

 if (avail >= MaxFSMRequestSize)
  return 255;

 cat = avail / FSM_CAT_STEP;





 if (cat > 254)
  cat = 254;

 return (uint8) cat;
}
