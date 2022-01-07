
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEBUG1 ;
 int elog (int ,char*,...) ;
 scalar_t__ isdigit (unsigned char) ;

__attribute__((used)) static bool
check_table(const char *(*TABLE)[2], const unsigned TABLE_index[10][2])
{
 const char *aux1,
      *aux2;
 int a,
    b,
    x = 0,
    y = -1,
    i = 0,
    j,
    init = 0;

 if (TABLE == ((void*)0) || TABLE_index == ((void*)0))
  return 1;

 while (TABLE[i][0] && TABLE[i][1])
 {
  aux1 = TABLE[i][0];
  aux2 = TABLE[i][1];


  if (!isdigit((unsigned char) *aux1) || !isdigit((unsigned char) *aux2))
   goto invalidtable;
  a = *aux1 - '0';
  b = *aux2 - '0';


  while (*aux1 && *aux2)
  {
   if (!(isdigit((unsigned char) *aux1) &&
      isdigit((unsigned char) *aux2)) &&
    (*aux1 != *aux2 || *aux1 != '-'))
    goto invalidtable;
   aux1++;
   aux2++;
  }
  if (*aux1 != *aux2)
   goto invalidtable;


  if (a > y)
  {

   for (j = x; j <= y; j++)
   {
    if (TABLE_index[j][0] != init)
     goto invalidindex;
    if (TABLE_index[j][1] != i - init)
     goto invalidindex;
   }
   init = i;
   x = a;
  }


  y = b;
  if (y < x)
   goto invalidtable;
  i++;
 }

 return 1;

invalidtable:
 elog(DEBUG1, "invalid table near {\"%s\", \"%s\"} (pos: %d)",
   TABLE[i][0], TABLE[i][1], i);
 return 0;

invalidindex:
 elog(DEBUG1, "index %d is invalid", j);
 return 0;
}
