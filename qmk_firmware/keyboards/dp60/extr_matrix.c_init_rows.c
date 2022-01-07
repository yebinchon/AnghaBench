
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int B7 ;
 int D4 ;
 int E6 ;
 int F6 ;
 int F7 ;
 int setPinInputHigh (int ) ;

__attribute__((used)) static void init_rows(void)
{
  setPinInputHigh(E6);
  setPinInputHigh(F6);
  setPinInputHigh(F7);
  setPinInputHigh(B7);
  setPinInputHigh(D4);
}
