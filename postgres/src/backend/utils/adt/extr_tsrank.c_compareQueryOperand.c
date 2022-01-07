
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int distance; int length; } ;
typedef TYPE_1__ QueryOperand ;


 int tsCompareString (char*,int ,char*,int ,int) ;

__attribute__((used)) static int
compareQueryOperand(const void *a, const void *b, void *arg)
{
 char *operand = (char *) arg;
 QueryOperand *qa = (*(QueryOperand *const *) a);
 QueryOperand *qb = (*(QueryOperand *const *) b);

 return tsCompareString(operand + qa->distance, qa->length,
         operand + qb->distance, qb->length,
         0);
}
