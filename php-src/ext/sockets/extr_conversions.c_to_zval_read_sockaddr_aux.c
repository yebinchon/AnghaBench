
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
struct sockaddr {int sa_family; } ;
typedef int res_context ;





 int ZVAL_NULL (int *) ;
 int array_init (int *) ;
 int do_to_zval_err (int *,char*,int) ;
 int to_zval_read_sockaddr_in (char const*,int *,int *) ;
 int to_zval_read_sockaddr_in6 (char const*,int *,int *) ;
 int to_zval_read_sockaddr_un (char const*,int *,int *) ;

__attribute__((used)) static void to_zval_read_sockaddr_aux(const char *sockaddr_c, zval *zv, res_context *ctx)
{
 const struct sockaddr *saddr = (struct sockaddr *)sockaddr_c;

 if (saddr->sa_family == 0) {
  ZVAL_NULL(zv);
  return;
 }

 array_init(zv);

 switch (saddr->sa_family) {
 case 130:
  to_zval_read_sockaddr_in(sockaddr_c, zv, ctx);
  break;







 case 128:
  to_zval_read_sockaddr_un(sockaddr_c, zv, ctx);
  break;

 default:
  do_to_zval_err(ctx, "cannot read struct sockaddr with family %d; "
    "not supported",
    (int)saddr->sa_family);
  break;
 }
}
