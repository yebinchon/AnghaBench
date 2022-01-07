
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lookup {int l_value; } ;
typedef int lineno_t ;
typedef int FILE ;


 int BUFSIZ ;
 int EXIT_FAILURE ;




 char* _ (char*) ;
 struct lookup* byword (char*,struct lookup const*) ;
 int close_file (int *,int *,int ) ;
 int eat (char const*,int) ;
 int errno ;
 int error (char*) ;
 int exit (int ) ;
 char* fgets (char*,int,int *) ;
 int filename ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*,char*,...) ;
 int free (char**) ;
 char** getfields (char*) ;
 int inleap (char**,int) ;
 int inlink (char**,int) ;
 int inrule (char**,int) ;
 int inzcont (char**,int) ;
 int inzone (char**,int) ;
 struct lookup* leap_line_codes ;
 char const* leapsec ;
 char* progname ;
 int stderr ;
 int * stdin ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char const*,char*) ;
 char* strerror (int ) ;
 struct lookup* zi_line_codes ;

__attribute__((used)) static void
infile(const char *name)
{
 FILE *fp;
 char **fields;
 char *cp;
 const struct lookup *lp;
 int nfields;
 bool wantcont;
 lineno_t num;
 char buf[BUFSIZ];

 if (strcmp(name, "-") == 0)
 {
  name = _("standard input");
  fp = stdin;
 }
 else if ((fp = fopen(name, "r")) == ((void*)0))
 {
  const char *e = strerror(errno);

  fprintf(stderr, _("%s: Cannot open %s: %s\n"),
    progname, name, e);
  exit(EXIT_FAILURE);
 }
 wantcont = 0;
 for (num = 1;; ++num)
 {
  eat(name, num);
  if (fgets(buf, sizeof buf, fp) != buf)
   break;
  cp = strchr(buf, '\n');
  if (cp == ((void*)0))
  {
   error(_("line too long"));
   exit(EXIT_FAILURE);
  }
  *cp = '\0';
  fields = getfields(buf);
  nfields = 0;
  while (fields[nfields] != ((void*)0))
  {
   static char nada;

   if (strcmp(fields[nfields], "-") == 0)
    fields[nfields] = &nada;
   ++nfields;
  }
  if (nfields == 0)
  {

  }
  else if (wantcont)
  {
   wantcont = inzcont(fields, nfields);
  }
  else
  {
   struct lookup const *line_codes
   = name == leapsec ? leap_line_codes : zi_line_codes;

   lp = byword(fields[0], line_codes);
   if (lp == ((void*)0))
    error(_("input line of unknown type"));
   else
    switch (lp->l_value)
    {
     case 129:
      inrule(fields, nfields);
      wantcont = 0;
      break;
     case 128:
      wantcont = inzone(fields, nfields);
      break;
     case 130:
      inlink(fields, nfields);
      wantcont = 0;
      break;
     case 131:
      inleap(fields, nfields);
      wantcont = 0;
      break;
     default:
      fprintf(stderr,
        _("%s: panic: Invalid l_value %d\n"),
        progname, lp->l_value);
      exit(EXIT_FAILURE);
    }
  }
  free(fields);
 }
 close_file(fp, ((void*)0), filename);
 if (wantcont)
  error(_("expected continuation line not found"));
}
