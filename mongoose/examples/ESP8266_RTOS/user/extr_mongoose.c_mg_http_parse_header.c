
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_str {int dummy; } ;


 int MG_FREE (char*) ;
 int mg_http_parse_header2 (struct mg_str*,char const*,char**,size_t) ;

int mg_http_parse_header(struct mg_str *hdr, const char *var_name, char *buf,
                         size_t buf_size) {
  char *buf2 = buf;

  int len = mg_http_parse_header2(hdr, var_name, &buf2, buf_size);

  if (buf2 != buf) {

    MG_FREE(buf2);
    return 0;
  }

  return len;
}
