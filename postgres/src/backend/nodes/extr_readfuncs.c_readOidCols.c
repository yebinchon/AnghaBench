
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int atooid (char const*) ;
 scalar_t__ palloc (int) ;
 char* pg_strtok (int*) ;

Oid *
readOidCols(int numCols)
{
 int tokenLength,
    i;
 const char *token;
 Oid *oid_vals;

 if (numCols <= 0)
  return ((void*)0);

 oid_vals = (Oid *) palloc(numCols * sizeof(Oid));
 for (i = 0; i < numCols; i++)
 {
  token = pg_strtok(&tokenLength);
  oid_vals[i] = atooid(token);
 }

 return oid_vals;
}
