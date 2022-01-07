
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AttrNumber ;


 int atoi (char const*) ;
 scalar_t__ palloc (int) ;
 char* pg_strtok (int*) ;

AttrNumber *
readAttrNumberCols(int numCols)
{
 int tokenLength,
    i;
 const char *token;
 AttrNumber *attr_vals;

 if (numCols <= 0)
  return ((void*)0);

 attr_vals = (AttrNumber *) palloc(numCols * sizeof(AttrNumber));
 for (i = 0; i < numCols; i++)
 {
  token = pg_strtok(&tokenLength);
  attr_vals[i] = atoi(token);
 }

 return attr_vals;
}
