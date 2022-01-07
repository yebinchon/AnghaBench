
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct _ht {int dummy; } ;
struct TYPE_7__ {unsigned int htsize; TYPE_1__* first; struct _ht* ht; } ;
struct TYPE_6__ {struct TYPE_6__* next; int nKey; int pKey; } ;
typedef TYPE_1__ HashElem ;
typedef TYPE_2__ Hash ;


 unsigned int SQLITE_MALLOC_SOFT_LIMIT ;
 int insertElement (TYPE_2__*,struct _ht*,TYPE_1__*) ;
 int memset (struct _ht*,int ,unsigned int) ;
 int sqlite3BeginBenignMalloc () ;
 int sqlite3EndBenignMalloc () ;
 scalar_t__ sqlite3Malloc (unsigned int) ;
 int sqlite3MallocSize (struct _ht*) ;
 int sqlite3_free (struct _ht*) ;
 unsigned int strHash (int ,int ) ;

__attribute__((used)) static int rehash(Hash *pH, unsigned int new_size){
  struct _ht *new_ht;
  HashElem *elem, *next_elem;
  sqlite3BeginBenignMalloc();
  new_ht = (struct _ht *)sqlite3Malloc( new_size*sizeof(struct _ht) );
  sqlite3EndBenignMalloc();

  if( new_ht==0 ) return 0;
  sqlite3_free(pH->ht);
  pH->ht = new_ht;
  pH->htsize = new_size = sqlite3MallocSize(new_ht)/sizeof(struct _ht);
  memset(new_ht, 0, new_size*sizeof(struct _ht));
  for(elem=pH->first, pH->first=0; elem; elem = next_elem){
    unsigned int h = strHash(elem->pKey, elem->nKey) % new_size;
    next_elem = elem->next;
    insertElement(pH, &new_ht[h], elem);
  }
  return 1;
}
