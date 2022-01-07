
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r_magic {int dummy; } ;


 int R_FREE (struct r_magic*) ;
 int abort () ;
 int munmap (void*,int) ;

void file_delmagic(struct r_magic *p, int type, size_t entries) {
 if (p) {
  switch (type) {






 case 1:
  p--;

 case 0:
  R_FREE (p);
  break;
 default:
  abort ();
 }
 }
}
