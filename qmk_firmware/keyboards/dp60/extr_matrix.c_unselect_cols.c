
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
 int writePinHigh (int ) ;

__attribute__((used)) static void unselect_cols(void)
{
  writePinHigh(F0);
  writePinHigh(F1);
  writePinHigh(F4);
  writePinHigh(F5);

  writePinHigh(D2);
  writePinHigh(D3);
  writePinHigh(D5);
  writePinHigh(D6);
}
