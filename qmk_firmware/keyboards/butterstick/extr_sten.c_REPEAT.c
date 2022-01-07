
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ QWERTY ;
 scalar_t__ cMode ;
 int repeatFlag ;

void REPEAT(void) {
 if (cMode != QWERTY)
  return;

 repeatFlag = 1;
 return;
}
