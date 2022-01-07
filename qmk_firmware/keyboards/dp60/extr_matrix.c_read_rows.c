
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int B7 ;
 int D4 ;
 int E6 ;
 int F6 ;
 int F7 ;
 scalar_t__ readPin (int ) ;

__attribute__((used)) static uint8_t read_rows()
{
  return ((readPin(E6) ? 0 : (1 << 0)) |
          (readPin(F6) ? 0 : (1 << 1)) |
          (readPin(F7) ? 0 : (1 << 2)) |
          (readPin(B7) ? 0 : (1 << 3)) |
          (readPin(D4) ? 0 : (1 << 4)));
}
