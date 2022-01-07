
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int f; char* p; } ;
typedef TYPE_1__ Rangstr ;



__attribute__((used)) static int findkey(Rangstr *rs) {
 int i;
 for (i = rs->f; i > 0; i--) {

  if (rs->p[i] == '"') {
   for (--i; i > 0; i--) {

    if (rs->p[i] == '"') {
     return i;
    }
   }
  }
 }
 return -1;
}
