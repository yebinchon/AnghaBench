
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGcancel ;


 int free (int *) ;

void
PQfreeCancel(PGcancel *cancel)
{
 if (cancel)
  free(cancel);
}
