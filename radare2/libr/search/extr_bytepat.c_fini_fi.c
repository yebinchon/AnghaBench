
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ fnditem ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void fini_fi(fnditem* fi) {
 fnditem *fu;
 fu = fi;
 while (fi->next) {
  fu = fi;
  fi = fi->next;
  free (fu);
  fu = ((void*)0);
 }
 free (fu);
}
