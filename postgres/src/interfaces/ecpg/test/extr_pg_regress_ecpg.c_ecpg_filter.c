
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int LINEBUFSIZE ;
 int StrNCpy (char*,char*,int) ;
 int exit (int) ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*,char const*) ;
 int fputs (char*,int *) ;
 scalar_t__ malloc (int) ;
 int replace_string (char*,char*,char*) ;
 int stderr ;
 char* strchr (char*,char) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static void
ecpg_filter(const char *sourcefile, const char *outfile)
{




 FILE *s,
      *t;
 char linebuf[LINEBUFSIZE];

 s = fopen(sourcefile, "r");
 if (!s)
 {
  fprintf(stderr, "Could not open file %s for reading\n", sourcefile);
  exit(2);
 }
 t = fopen(outfile, "w");
 if (!t)
 {
  fprintf(stderr, "Could not open file %s for writing\n", outfile);
  exit(2);
 }

 while (fgets(linebuf, LINEBUFSIZE, s))
 {

  if (strstr(linebuf, "#line ") == linebuf)
  {
   char *p = strchr(linebuf, '"');
   char *n;
   int plen = 1;

   while (*p && (*(p + plen) == '.' || strchr(p + plen, '/') != ((void*)0)))
   {
    plen++;
   }

   if (plen > 1)
   {
    n = (char *) malloc(plen);
    StrNCpy(n, p + 1, plen);
    replace_string(linebuf, n, "");
   }
  }
  fputs(linebuf, t);
 }
 fclose(s);
 fclose(t);
}
