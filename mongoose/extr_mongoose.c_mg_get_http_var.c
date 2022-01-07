
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_str {char* p; scalar_t__ len; } ;


 scalar_t__ memchr (char const*,char,size_t) ;
 int mg_ncasecmp (char const*,char const*,size_t) ;
 int mg_url_decode (char const*,size_t,char*,size_t,int) ;
 size_t strlen (char const*) ;

int mg_get_http_var(const struct mg_str *buf, const char *name, char *dst,
                    size_t dst_len) {
  const char *p, *e, *s;
  size_t name_len;
  int len;
  if (dst == ((void*)0) || dst_len == 0) {
    len = -2;
  } else if (buf->p == ((void*)0) || name == ((void*)0) || buf->len == 0) {
    len = -1;
    dst[0] = '\0';
  } else {
    name_len = strlen(name);
    e = buf->p + buf->len;
    len = -4;
    dst[0] = '\0';

    for (p = buf->p; p + name_len < e; p++) {
      if ((p == buf->p || p[-1] == '&') && p[name_len] == '=' &&
          !mg_ncasecmp(name, p, name_len)) {
        p += name_len + 1;
        s = (const char *) memchr(p, '&', (size_t)(e - p));
        if (s == ((void*)0)) {
          s = e;
        }
        len = mg_url_decode(p, (size_t)(s - p), dst, dst_len, 1);

        if (len == -1) {
          len = -3;
        }
        break;
      }
    }
  }

  return len;
}
