
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int res_context ;


 int ZVAL_NULL (int *) ;
 int to_zval_read_sockaddr_aux (void*,int *,int *) ;

__attribute__((used)) static void to_zval_read_name(const char *sockaddr_p, zval *zv, res_context *ctx)
{
 void *name = (void*)*(void**)sockaddr_p;
 if (name == ((void*)0)) {
  ZVAL_NULL(zv);
 } else {
  to_zval_read_sockaddr_aux(name, zv, ctx);
 }
}
