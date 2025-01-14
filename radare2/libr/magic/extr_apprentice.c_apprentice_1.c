
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int ut32 ;
struct r_magic {int dummy; } ;
struct mlist {int mapped; struct mlist* prev; struct mlist* next; int nmagic; struct r_magic* magic; } ;
struct TYPE_8__ {char const* file; scalar_t__ haderr; } ;
typedef TYPE_1__ RMagic ;


 int FILE_COMPILE ;
 scalar_t__ FILE_MAGICSIZE ;
 int apprentice_compile (TYPE_1__*,struct r_magic**,int *,char const*) ;
 int apprentice_load (TYPE_1__*,struct r_magic**,int *,char const*,int) ;
 int apprentice_map (TYPE_1__*,struct r_magic**,int *,char const*) ;
 int file_delmagic (struct r_magic*,int,int ) ;
 int file_error (TYPE_1__*,int ,char*,unsigned long,unsigned long) ;
 int file_oomem (TYPE_1__*,int) ;
 int free (struct r_magic*) ;
 scalar_t__ magicsize ;
 struct mlist* malloc (int) ;

__attribute__((used)) static int apprentice_1(RMagic *ms, const char *fn, int action, struct mlist *mlist) {
 struct r_magic *magic = ((void*)0);
 ut32 nmagic = 0;
 struct mlist *ml;
 int rv = -1;
 int mapped;

 if (!ms) {
  return -1;
 }
 ms->haderr = 0;
 if (magicsize != FILE_MAGICSIZE) {
  file_error(ms, 0, "magic element size %lu != %lu",
      (unsigned long)(size_t)sizeof (*magic),
      (unsigned long)FILE_MAGICSIZE);
  return -1;
 }

 ms->file = fn;
 if (action == FILE_COMPILE) {
  rv = apprentice_load (ms, &magic, &nmagic, fn, action);
  if (rv != 0) {
   return -1;
  }
  rv = apprentice_compile (ms, &magic, &nmagic, fn);
  free (magic);
  return rv;
 }

 if ((rv = apprentice_map (ms, &magic, &nmagic, fn)) == -1) {


  rv = apprentice_load (ms, &magic, &nmagic, fn, action);
  if (rv != 0) {
   return -1;
  }
 }

 mapped = rv;

 if (!magic) {
  file_delmagic (magic, mapped, nmagic);
  return -1;
 }

 if (!(ml = malloc (sizeof (*ml)))) {
  file_delmagic (magic, mapped, nmagic);
  file_oomem (ms, sizeof (*ml));
  return -1;
 }

 ml->magic = magic;
 ml->nmagic = nmagic;
 ml->mapped = mapped;

 mlist->prev->next = ml;
 ml->prev = mlist->prev;
 ml->next = mlist;
 mlist->prev = ml;
 return 0;
}
