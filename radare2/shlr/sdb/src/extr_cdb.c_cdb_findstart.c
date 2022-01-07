
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdb {int fd; scalar_t__ loop; } ;


 int SEEK_SET ;
 int lseek (int,int ,int ) ;

void cdb_findstart(struct cdb *c) {
 c->loop = 0;

 if (c->fd != -1) {
  lseek (c->fd, 0, SEEK_SET);
 }

}
