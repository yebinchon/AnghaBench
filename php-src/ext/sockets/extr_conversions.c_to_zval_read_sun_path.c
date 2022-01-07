
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
struct sockaddr_un {int sun_path; } ;
typedef int res_context ;


 int ZVAL_STRINGL (int *,int ,int) ;
 int do_to_zval_err (int *,char*) ;
 char* memchr (int *,char,int) ;

__attribute__((used)) static void to_zval_read_sun_path(const char *data, zval *zv, res_context *ctx) {
 struct sockaddr_un *saddr = (struct sockaddr_un*)data;
 char *nul_pos;

 nul_pos = memchr(&saddr->sun_path, '\0', sizeof(saddr->sun_path));
 if (nul_pos == ((void*)0)) {
  do_to_zval_err(ctx, "could not find a NUL in the path");
  return;
 }

 ZVAL_STRINGL(zv, saddr->sun_path, nul_pos - (char*)&saddr->sun_path);
}
