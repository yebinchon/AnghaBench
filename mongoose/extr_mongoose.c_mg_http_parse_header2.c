
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_str {int dummy; } ;
struct altbuf {scalar_t__ len; } ;


 char* altbuf_get_buf (struct altbuf*,int) ;
 int altbuf_init (struct altbuf*,char*,size_t) ;
 int mg_http_parse_header_internal (struct mg_str*,char const*,struct altbuf*) ;

int mg_http_parse_header2(struct mg_str *hdr, const char *var_name, char **buf,
                          size_t buf_size) {
  struct altbuf ab;
  altbuf_init(&ab, *buf, buf_size);
  if (hdr == ((void*)0)) return 0;
  if (*buf != ((void*)0) && buf_size > 0) *buf[0] = '\0';

  mg_http_parse_header_internal(hdr, var_name, &ab);





  *buf = altbuf_get_buf(&ab, 1 );
  return ab.len > 0 ? ab.len - 1 : 0;
}
