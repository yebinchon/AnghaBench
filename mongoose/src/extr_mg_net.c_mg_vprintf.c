
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct mg_connection {int dummy; } ;
typedef int mem ;


 int MG_FREE (char*) ;
 int MG_VPRINTF_BUFFER_SIZE ;
 int mg_avprintf (char**,int,char const*,int ) ;
 int mg_send (struct mg_connection*,char*,int) ;

int mg_vprintf(struct mg_connection *nc, const char *fmt, va_list ap) {
  char mem[MG_VPRINTF_BUFFER_SIZE], *buf = mem;
  int len;

  if ((len = mg_avprintf(&buf, sizeof(mem), fmt, ap)) > 0) {
    mg_send(nc, buf, len);
  }
  if (buf != mem && buf != ((void*)0)) {
    MG_FREE(buf);
  }

  return len;
}
