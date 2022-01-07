
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* next; int str; } ;
typedef TYPE_1__ fnditem ;


 scalar_t__ malloc (int) ;
 int memcpy (int ,unsigned char*,int) ;

__attribute__((used)) static void add_fi (fnditem* n, unsigned char* blk, int patlen) {
 fnditem* p;
 for (p = n; p->next != ((void*)0); p = p->next) {
  ;
 }
 p->next = (fnditem*) malloc (sizeof (fnditem));
 p = p->next;
 memcpy (p->str, blk, patlen);
 p->next = ((void*)0);
}
