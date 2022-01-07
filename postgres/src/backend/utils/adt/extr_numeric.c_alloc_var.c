
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ndigits; scalar_t__* buf; scalar_t__* digits; } ;
typedef TYPE_1__ NumericVar ;


 scalar_t__* digitbuf_alloc (int) ;
 int digitbuf_free (scalar_t__*) ;

__attribute__((used)) static void
alloc_var(NumericVar *var, int ndigits)
{
 digitbuf_free(var->buf);
 var->buf = digitbuf_alloc(ndigits + 1);
 var->buf[0] = 0;
 var->digits = var->buf + 1;
 var->ndigits = ndigits;
}
