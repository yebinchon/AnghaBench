
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct http_message {int dummy; } ;


 int mg_parse_http (char const*,size_t,struct http_message*,int) ;

int LLVMFuzzerTestOneInput(const uint8_t *data, size_t size) {
  struct http_message req;
  mg_parse_http((const char *) data, size, &req, 0);
  mg_parse_http((const char *) data, size, &req, 1);
  return 0;
}
