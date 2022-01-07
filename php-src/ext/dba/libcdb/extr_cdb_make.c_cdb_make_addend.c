
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32 ;
struct cdb_make {int numentries; int pos; struct cdb_hplist* head; } ;
struct cdb_hplist {size_t num; TYPE_1__* hp; struct cdb_hplist* next; } ;
struct TYPE_2__ {int p; int h; } ;


 size_t CDB_HPLIST ;
 int cdb_posplus (struct cdb_make*,unsigned int) ;
 scalar_t__ emalloc (int) ;

int cdb_make_addend(struct cdb_make *c, unsigned int keylen, unsigned int datalen, uint32 h)
{
 struct cdb_hplist *head;

 head = c->head;
 if (!head || (head->num >= CDB_HPLIST)) {
  head = (struct cdb_hplist *) emalloc(sizeof(struct cdb_hplist));
  if (!head)
   return -1;
  head->num = 0;
  head->next = c->head;
  c->head = head;
 }
 head->hp[head->num].h = h;
 head->hp[head->num].p = c->pos;
 ++head->num;
 ++c->numentries;
 if (cdb_posplus(c,8) == -1)
  return -1;
 if (cdb_posplus(c, keylen) == -1)
  return -1;
 if (cdb_posplus(c, datalen) == -1)
  return -1;
 return 0;
}
