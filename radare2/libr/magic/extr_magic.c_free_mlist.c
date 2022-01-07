
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r_magic {int dummy; } ;
struct mlist {int nmagic; int mapped; struct r_magic* magic; struct mlist* next; } ;


 int file_delmagic (struct r_magic*,int ,int ) ;
 int free (struct mlist*) ;

__attribute__((used)) static void free_mlist(struct mlist *mlist) {
 struct mlist *ml;
 if (!mlist) {
  return;
 }
 for (ml = mlist->next; ml != mlist;) {
  struct mlist *next = ml->next;
  struct r_magic *mg = ml->magic;
  file_delmagic (mg, ml->mapped, ml->nmagic);
  free (ml);
  ml = next;
 }
 free (ml);
}
