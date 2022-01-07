
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zval ;
typedef scalar_t__ zend_long ;
struct TYPE_6__ {scalar_t__ has_error; } ;
struct TYPE_7__ {TYPE_1__ err; } ;
typedef TYPE_2__ ser_context ;
typedef int ival ;


 scalar_t__ INT_MAX ;
 scalar_t__ INT_MIN ;
 int do_from_zval_err (TYPE_2__*,char*,char*) ;
 scalar_t__ from_zval_integer_common (int const*,TYPE_2__*) ;
 int memcpy (char*,int*,int) ;

void from_zval_write_int(const zval *arr_value, char *field, ser_context *ctx)
{
 zend_long lval;
 int ival;

 lval = from_zval_integer_common(arr_value, ctx);
 if (ctx->err.has_error) {
  return;
 }

 if (lval > INT_MAX || lval < INT_MIN) {
  do_from_zval_err(ctx, "%s", "given PHP integer is out of bounds "
    "for a native int");
  return;
 }

 ival = (int)lval;
 memcpy(field, &ival, sizeof(ival));
}
