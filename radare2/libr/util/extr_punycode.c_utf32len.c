
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ut32 ;



int utf32len (ut32 *input) {
 int i = 0;
 while (*(input + i)) {
  i++;
 }
 return i;
}
