
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sign; scalar_t__ weight; scalar_t__ ndigits; int * digits; int * buf; } ;
typedef TYPE_1__ numeric ;


 int NUMERIC_POS ;
 int digitbuf_free (int *) ;

__attribute__((used)) static void
zero_var(numeric *var)
{
 digitbuf_free(var->buf);
 var->buf = ((void*)0);
 var->digits = ((void*)0);
 var->ndigits = 0;
 var->weight = 0;
 var->sign = NUMERIC_POS;
}
