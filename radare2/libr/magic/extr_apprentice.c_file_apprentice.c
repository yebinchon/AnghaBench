
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlist {struct mlist* prev; struct mlist* next; } ;
typedef int RMagic ;


 char* MAGICFILE ;
 int PATHSEP ;
 int R_FREE (struct mlist*) ;
 int R_MAX (int,int) ;
 int apprentice_1 (int *,char const*,int,struct mlist*) ;
 int file_error (int *,int ,char*) ;
 int file_oomem (int *,int) ;
 int free (char*) ;
 char* getenv (char*) ;
 int init_file_tables () ;
 struct mlist* malloc (int) ;
 char* strchr (char const*,int ) ;
 char* strdup (char const*) ;
 int strlen (char const*) ;

struct mlist * file_apprentice(RMagic *ms, const char *fn, int action) {
 char *p, *mfn;
 int file_err, errs = -1;
 struct mlist *mlist;

 init_file_tables ();

 if (!fn) {
  fn = getenv ("MAGIC");
 }
 if (!fn) {
  fn = MAGICFILE;
 }

 if (!(mfn = strdup (fn))) {
  file_oomem (ms, strlen (fn));
  return ((void*)0);
 }
 fn = mfn;

 if (!(mlist = malloc (sizeof (*mlist)))) {
  free (mfn);
  file_oomem (ms, sizeof (*mlist));
  return ((void*)0);
 }
 mlist->next = mlist->prev = mlist;

 while (fn) {
  p = strchr (fn, PATHSEP);
  if (p) {
   *p++ = '\0';
  }
  if (*fn == '\0') {
   break;
  }
  file_err = apprentice_1 (ms, fn, action, mlist);
  errs = R_MAX (errs, file_err);
  fn = p;
 }
 if (errs == -1) {
  free (mfn);
  R_FREE (mlist);
  file_error (ms, 0, "could not find any magic files!");
  return ((void*)0);
 }
 free (mfn);
 return mlist;
}
