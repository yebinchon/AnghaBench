
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int DPRINTF_S (scalar_t__) ;
 int FALSE ;
 int TRUE ;
 scalar_t__ cfgdir ;
 int fclose (int *) ;
 int * fopen (scalar_t__,char*) ;
 scalar_t__ fprintf (int *,char*,char const*) ;
 size_t strlen (scalar_t__) ;
 int xstrlcpy (scalar_t__,char*,int) ;

__attribute__((used)) static bool write_lastdir(const char *curpath)
{
 bool ret = TRUE;
 size_t len = strlen(cfgdir);

 xstrlcpy(cfgdir + len, "/.lastd", 8);
 DPRINTF_S(cfgdir);

 FILE *fp = fopen(cfgdir, "w");

 if (fp) {
  if (fprintf(fp, "cd \"%s\"", curpath) < 0)
   ret = FALSE;

  fclose(fp);
 } else
  ret = FALSE;

 return ret;
}
