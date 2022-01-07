
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef size_t Size ;
typedef int Datum ;


 scalar_t__ DatumGetPointer (int ) ;
 int PointerIsValid (char*) ;
 int appendStringInfo (int ,char*,int) ;
 int appendStringInfoChar (int ,char) ;
 int appendStringInfoString (int ,char*) ;
 size_t datumGetSize (int ,int,int) ;

void
outDatum(StringInfo str, Datum value, int typlen, bool typbyval)
{
 Size length,
    i;
 char *s;

 length = datumGetSize(value, typbyval, typlen);

 if (typbyval)
 {
  s = (char *) (&value);
  appendStringInfo(str, "%u [ ", (unsigned int) length);
  for (i = 0; i < (Size) sizeof(Datum); i++)
   appendStringInfo(str, "%d ", (int) (s[i]));
  appendStringInfoChar(str, ']');
 }
 else
 {
  s = (char *) DatumGetPointer(value);
  if (!PointerIsValid(s))
   appendStringInfoString(str, "0 [ ]");
  else
  {
   appendStringInfo(str, "%u [ ", (unsigned int) length);
   for (i = 0; i < length; i++)
    appendStringInfo(str, "%d ", (int) (s[i]));
   appendStringInfoChar(str, ']');
  }
 }
}
