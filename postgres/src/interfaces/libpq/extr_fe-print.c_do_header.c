
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* fieldSep; scalar_t__ html3; scalar_t__ standard; } ;
typedef TYPE_1__ PQprintOpt ;
typedef int PGresult ;
typedef int FILE ;


 char* PQfname (int const*,int) ;
 int abort () ;
 int fprintf (int *,char*,...) ;
 int fputs (char*,int *) ;
 char* libpq_gettext (char*) ;
 char* malloc (int) ;
 int stderr ;
 int strlen (char const*) ;

__attribute__((used)) static char *
do_header(FILE *fout, const PQprintOpt *po, const int nFields, int *fieldMax,
    const char **fieldNames, unsigned char *fieldNotNum,
    const int fs_len, const PGresult *res)
{
 int j;
 char *border = ((void*)0);

 if (po->html3)
  fputs("<tr>", fout);
 else
 {
  int tot = 0;
  int n = 0;
  char *p = ((void*)0);

  for (; n < nFields; n++)
   tot += fieldMax[n] + fs_len + (po->standard ? 2 : 0);
  if (po->standard)
   tot += fs_len * 2 + 2;
  border = malloc(tot + 1);
  if (!border)
  {
   fprintf(stderr, libpq_gettext("out of memory\n"));
   abort();
  }
  p = border;
  if (po->standard)
  {
   char *fs = po->fieldSep;

   while (*fs++)
    *p++ = '+';
  }
  for (j = 0; j < nFields; j++)
  {
   int len;

   for (len = fieldMax[j] + (po->standard ? 2 : 0); len--; *p++ = '-');
   if (po->standard || (j + 1) < nFields)
   {
    char *fs = po->fieldSep;

    while (*fs++)
     *p++ = '+';
   }
  }
  *p = '\0';
  if (po->standard)
   fprintf(fout, "%s\n", border);
 }
 if (po->standard)
  fputs(po->fieldSep, fout);
 for (j = 0; j < nFields; j++)
 {
  const char *s = PQfname(res, j);

  if (po->html3)
  {
   fprintf(fout, "<th align=\"%s\">%s</th>",
     fieldNotNum[j] ? "left" : "right", fieldNames[j]);
  }
  else
  {
   int n = strlen(s);

   if (n > fieldMax[j])
    fieldMax[j] = n;
   if (po->standard)
    fprintf(fout,
      fieldNotNum[j] ? " %-*s " : " %*s ",
      fieldMax[j], s);
   else
    fprintf(fout, fieldNotNum[j] ? "%-*s" : "%*s", fieldMax[j], s);
   if (po->standard || (j + 1) < nFields)
    fputs(po->fieldSep, fout);
  }
 }
 if (po->html3)
  fputs("</tr>\n", fout);
 else
  fprintf(fout, "\n%s\n", border);
 return border;
}
