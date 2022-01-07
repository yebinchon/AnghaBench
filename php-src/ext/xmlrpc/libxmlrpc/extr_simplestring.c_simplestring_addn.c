
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t size; char* str; size_t len; } ;
typedef TYPE_1__ simplestring ;


 size_t SIZE_MAX ;
 scalar_t__ erealloc (char*,size_t) ;
 int memcpy (char*,char const*,size_t) ;
 int simplestring_init_str (TYPE_1__*) ;

void simplestring_addn(simplestring* target, const char* source, size_t add_len) {
   size_t newsize = target->size, incr = 0;
   if(target && source) {
      if(!target->str) {
         simplestring_init_str(target);
      }

      if((SIZE_MAX - add_len) < target->len || (SIZE_MAX - add_len - 1) < target->len) {

       return;
      }

      if(target->len + add_len + 1 > target->size) {

         newsize = target->len + add_len + 1;
         incr = target->size * 2;


         if (incr) {
            newsize = newsize - (newsize % incr) + incr;
         }
         if(newsize < (target->len + add_len + 1)) {

          return;
         }
         target->str = (char*)erealloc(target->str, newsize);

         target->size = target->str ? newsize : 0;
      }

      if(target->str) {
         if(add_len) {
            memcpy(target->str + target->len, source, add_len);
         }
         target->len += add_len;
         target->str[target->len] = 0;
      }
   }
}
