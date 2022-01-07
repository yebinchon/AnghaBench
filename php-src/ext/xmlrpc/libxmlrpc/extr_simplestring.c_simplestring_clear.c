
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ len; scalar_t__* str; } ;
typedef TYPE_1__ simplestring ;



void simplestring_clear(simplestring* string) {
   if(string->str) {
      string->str[0] = 0;
   }
   string->len = 0;
}
