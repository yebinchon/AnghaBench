
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void delay(int a) {
  volatile int i;
  for (i = 0; i < a; i++);
}
