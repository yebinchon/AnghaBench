
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pos; int db; } ;
typedef TYPE_1__ Sdb ;


 int cdb_read (int *,char*,int,int) ;

__attribute__((used)) static int getbytes(Sdb *s, char *b, int len) {
 if (!cdb_read (&s->db, b, len, s->pos)) {
  return -1;
 }
 s->pos += len;
 return len;
}
