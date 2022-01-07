
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* sort_value; int rank; } ;
typedef TYPE_1__ pivot_field ;


 int atoi (char*) ;
 int pg_free (int*) ;
 scalar_t__ pg_malloc (int) ;
 int qsort (int*,int,int,int ) ;
 int rankCompare ;
 scalar_t__ strlen (char*) ;
 scalar_t__ strspn (char*,char*) ;

__attribute__((used)) static void
rankSort(int num_columns, pivot_field *piv_columns)
{
 int *hmap;

 int i;

 hmap = (int *) pg_malloc(sizeof(int) * num_columns * 2);
 for (i = 0; i < num_columns; i++)
 {
  char *val = piv_columns[i].sort_value;


  if (val &&
   ((*val == '-' &&
     strspn(val + 1, "0123456789") == strlen(val + 1)) ||
    strspn(val, "0123456789") == strlen(val)))
  {
   hmap[i * 2] = atoi(val);
   hmap[i * 2 + 1] = i;
  }
  else
  {

   hmap[i * 2] = 0;
   hmap[i * 2 + 1] = i;
  }
 }

 qsort(hmap, num_columns, sizeof(int) * 2, rankCompare);

 for (i = 0; i < num_columns; i++)
 {
  piv_columns[hmap[i * 2 + 1]].rank = i;
 }

 pg_free(hmap);
}
