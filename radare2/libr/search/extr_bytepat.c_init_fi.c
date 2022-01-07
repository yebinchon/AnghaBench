
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * next; } ;
typedef TYPE_1__ fnditem ;


 scalar_t__ malloc (int) ;

__attribute__((used)) static fnditem* init_fi() {
 fnditem* n;
 n = (fnditem*) malloc (sizeof (fnditem));
 if (!n) {
  return ((void*)0);
 }
 n->next = ((void*)0);
 return n;
}
