
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdb {int * map; int size; } ;


 int free (int *) ;
 int munmap (int *,int ) ;

void cdb_free(struct cdb *c) {
 if (!c->map) {
  return;
 }



 free (c->map);

 c->map = ((void*)0);
}
