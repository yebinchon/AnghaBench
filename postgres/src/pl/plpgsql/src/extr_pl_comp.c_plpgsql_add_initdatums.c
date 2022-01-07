
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dtype; int dno; } ;




 int datums_last ;
 scalar_t__ palloc (int) ;
 TYPE_1__** plpgsql_Datums ;
 int plpgsql_nDatums ;

int
plpgsql_add_initdatums(int **varnos)
{
 int i;
 int n = 0;





 for (i = datums_last; i < plpgsql_nDatums; i++)
 {
  switch (plpgsql_Datums[i]->dtype)
  {
   case 128:
   case 129:
    n++;
    break;

   default:
    break;
  }
 }

 if (varnos != ((void*)0))
 {
  if (n > 0)
  {
   *varnos = (int *) palloc(sizeof(int) * n);

   n = 0;
   for (i = datums_last; i < plpgsql_nDatums; i++)
   {
    switch (plpgsql_Datums[i]->dtype)
    {
     case 128:
     case 129:
      (*varnos)[n++] = plpgsql_Datums[i]->dno;

     default:
      break;
    }
   }
  }
  else
   *varnos = ((void*)0);
 }

 datums_last = plpgsql_nDatums;
 return n;
}
