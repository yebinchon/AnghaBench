
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int str; struct TYPE_3__* next; } ;
typedef TYPE_1__ fnditem ;


 int memcmp (unsigned char*,int ,int) ;

__attribute__((used)) static int is_fi_present(fnditem* n, unsigned char* blk , int patlen) {
 fnditem* p;
 for (p = n; p->next != ((void*)0); p = p->next) {
  if (!memcmp (blk, p->str, patlen)) {
   return 1;
  }
 }
 return 0;
}
