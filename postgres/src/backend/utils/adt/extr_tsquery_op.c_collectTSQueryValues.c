
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int length; int distance; } ;
struct TYPE_10__ {scalar_t__ type; TYPE_1__ qoperand; } ;
struct TYPE_9__ {int size; } ;
typedef TYPE_2__* TSQuery ;
typedef TYPE_3__ QueryItem ;


 char* GETOPERAND (TYPE_2__*) ;
 TYPE_3__* GETQUERY (TYPE_2__*) ;
 scalar_t__ QI_VAL ;
 int memcpy (char*,char*,int) ;
 char* palloc (int) ;

__attribute__((used)) static char **
collectTSQueryValues(TSQuery a, int *nvalues_p)
{
 QueryItem *ptr = GETQUERY(a);
 char *operand = GETOPERAND(a);
 char **values;
 int nvalues = 0;
 int i;

 values = (char **) palloc(sizeof(char *) * a->size);

 for (i = 0; i < a->size; i++)
 {
  if (ptr->type == QI_VAL)
  {
   int len = ptr->qoperand.length;
   char *val;

   val = palloc(len + 1);
   memcpy(val, operand + ptr->qoperand.distance, len);
   val[len] = '\0';

   values[nvalues++] = val;
  }
  ptr++;
 }

 *nvalues_p = nvalues;
 return values;
}
