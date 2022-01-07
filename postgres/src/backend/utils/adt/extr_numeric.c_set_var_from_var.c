
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ndigits; scalar_t__* digits; scalar_t__* buf; } ;
typedef TYPE_1__ NumericVar ;
typedef scalar_t__ NumericDigit ;


 scalar_t__* digitbuf_alloc (int) ;
 int digitbuf_free (scalar_t__*) ;
 int memcpy (scalar_t__*,scalar_t__*,int) ;
 int memmove (TYPE_1__*,TYPE_1__ const*,int) ;

__attribute__((used)) static void
set_var_from_var(const NumericVar *value, NumericVar *dest)
{
 NumericDigit *newbuf;

 newbuf = digitbuf_alloc(value->ndigits + 1);
 newbuf[0] = 0;
 if (value->ndigits > 0)
  memcpy(newbuf + 1, value->digits,
      value->ndigits * sizeof(NumericDigit));

 digitbuf_free(dest->buf);

 memmove(dest, value, sizeof(NumericVar));
 dest->buf = newbuf;
 dest->digits = newbuf + 1;
}
