
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_cols; char** colnames; } ;
typedef TYPE_1__ deparse_columns ;


 int memset (char**,int ,int) ;
 scalar_t__ palloc0 (int) ;
 scalar_t__ repalloc (char**,int) ;

__attribute__((used)) static void
expand_colnames_array_to(deparse_columns *colinfo, int n)
{
 if (n > colinfo->num_cols)
 {
  if (colinfo->colnames == ((void*)0))
   colinfo->colnames = (char **) palloc0(n * sizeof(char *));
  else
  {
   colinfo->colnames = (char **) repalloc(colinfo->colnames,
               n * sizeof(char *));
   memset(colinfo->colnames + colinfo->num_cols, 0,
       (n - colinfo->num_cols) * sizeof(char *));
  }
  colinfo->num_cols = n;
 }
}
