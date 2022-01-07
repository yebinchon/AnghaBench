
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (char const*) ;
 scalar_t__ palloc (int) ;
 char* pg_strtok (int*) ;

int *
readIntCols(int numCols)
{
 int tokenLength,
    i;
 const char *token;
 int *int_vals;

 if (numCols <= 0)
  return ((void*)0);

 int_vals = (int *) palloc(numCols * sizeof(int));
 for (i = 0; i < numCols; i++)
 {
  token = pg_strtok(&tokenLength);
  int_vals[i] = atoi(token);
 }

 return int_vals;
}
