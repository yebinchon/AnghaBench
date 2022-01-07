
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGresult ;
typedef int FILE ;


 char* DEFAULT_FIELD_SEP ;
 char* PQfname (int const*,int) ;
 int PQgetlength (int const*,int,int) ;
 char* PQgetvalue (int const*,int,int) ;
 int PQnfields (int const*) ;
 int PQntuples (int const*) ;
 int abort () ;
 int fflush (int *) ;
 int fill (int,int,char,int *) ;
 int fprintf (int *,char*,...) ;
 int fputs (char const*,int *) ;
 int free (int*) ;
 char* libpq_gettext (char*) ;
 scalar_t__ malloc (int) ;
 int stderr ;
 int * stdout ;
 int strlen (char*) ;

void
PQdisplayTuples(const PGresult *res,
    FILE *fp,
    int fillAlign,
    const char *fieldSep,
    int printHeader,
    int quiet
)
{


 int i,
    j;
 int nFields;
 int nTuples;
 int *fLength = ((void*)0);

 if (fieldSep == ((void*)0))
  fieldSep = " ";


 nFields = PQnfields(res);
 nTuples = PQntuples(res);

 if (fp == ((void*)0))
  fp = stdout;



 if (fillAlign)
 {
  fLength = (int *) malloc(nFields * sizeof(int));
  if (!fLength)
  {
   fprintf(stderr, libpq_gettext("out of memory\n"));
   abort();
  }

  for (j = 0; j < nFields; j++)
  {
   fLength[j] = strlen(PQfname(res, j));
   for (i = 0; i < nTuples; i++)
   {
    int flen = PQgetlength(res, i, j);

    if (flen > fLength[j])
     fLength[j] = flen;
   }
  }
 }

 if (printHeader)
 {

  for (i = 0; i < nFields; i++)
  {
   fputs(PQfname(res, i), fp);
   if (fillAlign)
    fill(strlen(PQfname(res, i)), fLength[i], ' ', fp);
   fputs(fieldSep, fp);
  }
  fprintf(fp, "\n");


  for (i = 0; i < nFields; i++)
  {
   if (fillAlign)
    fill(0, fLength[i], '-', fp);
   fputs(fieldSep, fp);
  }
  fprintf(fp, "\n");
 }


 for (i = 0; i < nTuples; i++)
 {
  for (j = 0; j < nFields; j++)
  {
   fprintf(fp, "%s", PQgetvalue(res, i, j));
   if (fillAlign)
    fill(strlen(PQgetvalue(res, i, j)), fLength[j], ' ', fp);
   fputs(fieldSep, fp);
  }
  fprintf(fp, "\n");
 }

 if (!quiet)
  fprintf(fp, "\nQuery returned %d row%s.\n", PQntuples(res),
    (PQntuples(res) == 1) ? "" : "s");

 fflush(fp);

 if (fLength)
  free(fLength);
}
