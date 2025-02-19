
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct magic_set {int ** mlist; } ;






 size_t MAGIC_SETS ;
 int MAX (int,int) ;
 int PATHSEP ;
 int apprentice_1 (struct magic_set*,char const*,int) ;
 int efree (char*) ;
 char* estrdup (char const*) ;
 int file_error (struct magic_set*,int ,char*,...) ;
 int file_oomem (struct magic_set*,int) ;
 int file_reset (struct magic_set*,int ) ;
 char* getenv (char*) ;
 int init_file_tables () ;
 char* magic_getpath (char const*,int) ;
 void* mlist_alloc () ;
 int mlist_free (int *) ;
 char* strchr (char const*,int ) ;
 int strlen (char const*) ;

int
file_apprentice(struct magic_set *ms, const char *fn, int action)
{
 char *p, *mfn;
 int fileerr, errs = -1;
 size_t i;

 (void)file_reset(ms, 0);







 init_file_tables();

 if (fn == ((void*)0))
  fn = getenv("MAGIC");
 if (fn == ((void*)0)) {
  for (i = 0; i < MAGIC_SETS; i++) {
   mlist_free(ms->mlist[i]);
   if ((ms->mlist[i] = mlist_alloc()) == ((void*)0)) {
    file_oomem(ms, sizeof(*ms->mlist[i]));
    return -1;
   }
  }
  return apprentice_1(ms, fn, action);
 }

 if ((mfn = estrdup(fn)) == ((void*)0)) {
  file_oomem(ms, strlen(fn));
  return -1;
 }

 for (i = 0; i < MAGIC_SETS; i++) {
  mlist_free(ms->mlist[i]);
  if ((ms->mlist[i] = mlist_alloc()) == ((void*)0)) {
   file_oomem(ms, sizeof(*ms->mlist[i]));
   while (i-- > 0) {
    mlist_free(ms->mlist[i]);
    ms->mlist[i] = ((void*)0);
   }
   efree(mfn);
   return -1;
  }
 }
 fn = mfn;

 while (fn) {
  p = strchr(fn, PATHSEP);
  if (p)
   *p++ = '\0';
  if (*fn == '\0')
   break;
  fileerr = apprentice_1(ms, fn, action);
  errs = MAX(errs, fileerr);
  fn = p;
 }

 efree(mfn);

 if (errs == -1) {
  for (i = 0; i < MAGIC_SETS; i++) {
   mlist_free(ms->mlist[i]);
   ms->mlist[i] = ((void*)0);
  }
  file_error(ms, 0, "could not find any valid magic files!");
  return -1;
 }
 switch (action) {
 case 128:
 case 130:
 case 131:
 case 129:
  return 0;
 default:
  file_error(ms, 0, "Invalid action %d", action);
  return -1;
 }
}
