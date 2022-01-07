
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sign; int * digits; int * buf; } ;
typedef TYPE_1__ NumericVar ;


 int NUMERIC_NAN ;
 int digitbuf_free (int *) ;

__attribute__((used)) static void
free_var(NumericVar *var)
{
 digitbuf_free(var->buf);
 var->buf = ((void*)0);
 var->digits = ((void*)0);
 var->sign = NUMERIC_NAN;
}
