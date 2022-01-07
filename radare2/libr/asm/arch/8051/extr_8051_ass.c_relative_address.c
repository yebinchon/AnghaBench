
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ut8 ;
typedef scalar_t__ ut16 ;
typedef scalar_t__ st16 ;


 scalar_t__ INT8_MAX ;
 scalar_t__ INT8_MIN ;

__attribute__((used)) static bool relative_address(ut16 pc, ut16 address, ut8 *out)
{
 st16 diff = address - (pc + 2);
 if (diff < INT8_MIN || INT8_MAX < diff) {
  return 0;
 }
 else {
  *out = diff;
  return 1;
 }
}
