
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zval ;
typedef int zend_long ;
typedef int uint16_t ;
struct TYPE_6__ {scalar_t__ has_error; } ;
struct TYPE_7__ {TYPE_1__ err; } ;
typedef TYPE_2__ ser_context ;
typedef int ival ;


 int do_from_zval_err (TYPE_2__*,char*,char*) ;
 int from_zval_integer_common (int const*,TYPE_2__*) ;
 int htons (int ) ;
 int memcpy (char*,int *,int) ;

__attribute__((used)) static void from_zval_write_net_uint16(const zval *arr_value, char *field, ser_context *ctx)
{
 zend_long lval;
 uint16_t ival;

 lval = from_zval_integer_common(arr_value, ctx);
 if (ctx->err.has_error) {
  return;
 }

 if (lval < 0 || lval > 0xFFFF) {
  do_from_zval_err(ctx, "%s", "given PHP integer is out of bounds "
    "for an unsigned 16-bit integer");
  return;
 }

 ival = htons((uint16_t)lval);
 memcpy(field, &ival, sizeof(ival));
}
