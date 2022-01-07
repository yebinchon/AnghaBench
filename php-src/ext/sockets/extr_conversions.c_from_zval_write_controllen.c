
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int zval ;
typedef scalar_t__ uint32_t ;
struct msghdr {scalar_t__ msg_controllen; int msg_control; } ;
struct TYPE_7__ {int has_error; } ;
struct TYPE_8__ {TYPE_1__ err; } ;
typedef TYPE_2__ ser_context ;


 int accounted_emalloc (scalar_t__,TYPE_2__*) ;
 int do_from_zval_err (TYPE_2__*,char*) ;
 int from_zval_write_uint32 (int const*,char*,TYPE_2__*) ;

__attribute__((used)) static void from_zval_write_controllen(const zval *elem, char *msghdr_c, ser_context *ctx)
{
 struct msghdr *msghdr = (struct msghdr *)msghdr_c;
 uint32_t len;




 from_zval_write_uint32(elem, (char*)&len, ctx);
 if (!ctx->err.has_error && len == 0) {
  do_from_zval_err(ctx, "controllen cannot be 0");
  return;
 }
 msghdr->msg_control = accounted_emalloc(len, ctx);
 msghdr->msg_controllen = len;
}
