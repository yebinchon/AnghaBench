
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int D2 ;
 int D3 ;
 int D5 ;
 int D6 ;
 int F0 ;
 int F1 ;
 int F4 ;
 int F5 ;
 int setPinOutput (int ) ;
 int unselect_cols () ;

__attribute__((used)) static void init_cols(void)
{
  setPinOutput(F0);
  setPinOutput(F1);
  setPinOutput(F4);
  setPinOutput(F5);

  setPinOutput(D2);
  setPinOutput(D3);
  setPinOutput(D5);
  setPinOutput(D6);

  unselect_cols();
}
