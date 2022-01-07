
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ one_in_chance (int) ;

__attribute__((used)) static void mess_with_tm(void)
{

 if (one_in_chance(3)) {
  asm ("tbegin.	;"
       "beq 8	;");


  if (one_in_chance(2))
   asm("tsuspend.	;");
 }


 if (one_in_chance(20))
  asm("tend.	;");
}
