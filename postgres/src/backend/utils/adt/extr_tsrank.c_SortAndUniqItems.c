
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; } ;
typedef int TSQuery ;
typedef int QueryOperand ;
typedef TYPE_1__ QueryItem ;


 char* GETOPERAND (int ) ;
 TYPE_1__* GETQUERY (int ) ;
 scalar_t__ QI_VAL ;
 scalar_t__ compareQueryOperand (void*,void*,void*) ;
 scalar_t__ palloc (int) ;
 int qsort_arg (int **,int,int,scalar_t__ (*) (void*,void*,void*),void*) ;

__attribute__((used)) static QueryOperand **
SortAndUniqItems(TSQuery q, int *size)
{
 char *operand = GETOPERAND(q);
 QueryItem *item = GETQUERY(q);
 QueryOperand **res,
     **ptr,
     **prevptr;

 ptr = res = (QueryOperand **) palloc(sizeof(QueryOperand *) * *size);


 while ((*size)--)
 {
  if (item->type == QI_VAL)
  {
   *ptr = (QueryOperand *) item;
   ptr++;
  }
  item++;
 }

 *size = ptr - res;
 if (*size < 2)
  return res;

 qsort_arg(res, *size, sizeof(QueryOperand *), compareQueryOperand, (void *) operand);

 ptr = res + 1;
 prevptr = res;


 while (ptr - res < *size)
 {
  if (compareQueryOperand((void *) ptr, (void *) prevptr, (void *) operand) != 0)
  {
   prevptr++;
   *prevptr = *ptr;
  }
  ptr++;
 }

 *size = prevptr + 1 - res;
 return res;
}
