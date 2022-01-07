
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* str; scalar_t__ size; scalar_t__ len; } ;
typedef TYPE_1__ simplestring ;


 scalar_t__ SIMPLESTRING_INCR ;
 scalar_t__ emalloc (scalar_t__) ;

__attribute__((used)) static void simplestring_init_str(simplestring* string) {
   string->str = (char*)emalloc(SIMPLESTRING_INCR);
   if(string->str) {
      string->str[0] = 0;
      string->len = 0;
      string->size = SIMPLESTRING_INCR;
   }
   else {
      string->size = 0;
   }
}
