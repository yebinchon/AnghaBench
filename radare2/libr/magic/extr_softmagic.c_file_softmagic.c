
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut8 ;
struct mlist {int nmagic; int magic; struct mlist* next; } ;
struct TYPE_4__ {struct mlist* mlist; } ;
typedef TYPE_1__ RMagic ;


 int match (TYPE_1__*,int ,int ,int const*,size_t,int) ;

int file_softmagic(RMagic *ms, const ut8 *buf, size_t nbytes, int mode) {
 struct mlist *ml;
 int rv;
 for (ml = ms->mlist->next; ml != ms->mlist; ml = ml->next) {
  if ((rv = match(ms, ml->magic, ml->nmagic, buf, nbytes, mode)) != 0) {
   return rv;
  }
 }
 return 0;
}
