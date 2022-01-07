
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t Size ;
typedef scalar_t__ Datum ;


 int ERROR ;
 scalar_t__ PointerGetDatum (char*) ;
 scalar_t__ atoi (char const*) ;
 size_t atoui (char const*) ;
 int elog (int ,char*,...) ;
 scalar_t__ palloc (size_t) ;
 char* pg_strtok (int*) ;

Datum
readDatum(bool typbyval)
{
 Size length,
    i;
 int tokenLength;
 const char *token;
 Datum res;
 char *s;




 token = pg_strtok(&tokenLength);
 length = atoui(token);

 token = pg_strtok(&tokenLength);
 if (token == ((void*)0) || token[0] != '[')
  elog(ERROR, "expected \"[\" to start datum, but got \"%s\"; length = %zu",
    token ? token : "[NULL]", length);

 if (typbyval)
 {
  if (length > (Size) sizeof(Datum))
   elog(ERROR, "byval datum but length = %zu", length);
  res = (Datum) 0;
  s = (char *) (&res);
  for (i = 0; i < (Size) sizeof(Datum); i++)
  {
   token = pg_strtok(&tokenLength);
   s[i] = (char) atoi(token);
  }
 }
 else if (length <= 0)
  res = (Datum) ((void*)0);
 else
 {
  s = (char *) palloc(length);
  for (i = 0; i < length; i++)
  {
   token = pg_strtok(&tokenLength);
   s[i] = (char) atoi(token);
  }
  res = PointerGetDatum(s);
 }

 token = pg_strtok(&tokenLength);
 if (token == ((void*)0) || token[0] != ']')
  elog(ERROR, "expected \"]\" to end datum, but got \"%s\"; length = %zu",
    token ? token : "[NULL]", length);

 return res;
}
