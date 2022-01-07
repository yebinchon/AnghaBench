
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TupOutputState ;
typedef int Datum ;


 int DatumGetPointer (int ) ;
 int PointerGetDatum (int ) ;
 int cstring_to_text_with_len (char const*,int) ;
 int do_tup_output (int *,int *,int*) ;
 int pfree (int ) ;
 char* strchr (char const*,char) ;
 int strlen (char const*) ;

void
do_text_output_multiline(TupOutputState *tstate, const char *txt)
{
 Datum values[1];
 bool isnull[1] = {0};

 while (*txt)
 {
  const char *eol;
  int len;

  eol = strchr(txt, '\n');
  if (eol)
  {
   len = eol - txt;
   eol++;
  }
  else
  {
   len = strlen(txt);
   eol = txt + len;
  }

  values[0] = PointerGetDatum(cstring_to_text_with_len(txt, len));
  do_tup_output(tstate, values, isnull);
  pfree(DatumGetPointer(values[0]));
  txt = eol;
 }
}
