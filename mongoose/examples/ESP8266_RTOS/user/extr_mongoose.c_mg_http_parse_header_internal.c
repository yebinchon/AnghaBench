
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_str {char* p; int len; } ;
struct altbuf {scalar_t__ len; } ;


 int altbuf_append (struct altbuf*,char) ;
 int altbuf_reset (struct altbuf*) ;
 int strlen (char const*) ;
 int strncmp (char const*,char const*,int) ;

__attribute__((used)) static void mg_http_parse_header_internal(struct mg_str *hdr,
                                          const char *var_name,
                                          struct altbuf *ab) {
  int ch = ' ', ch1 = ',', ch2 = ';', n = strlen(var_name);
  const char *p, *end = hdr ? hdr->p + hdr->len : ((void*)0), *s = ((void*)0);


  for (s = hdr->p; s != ((void*)0) && s + n < end; s++) {
    if ((s == hdr->p || s[-1] == ch || s[-1] == ch1 || s[-1] == ';') &&
        s[n] == '=' && !strncmp(s, var_name, n))
      break;
  }

  if (s != ((void*)0) && &s[n + 1] < end) {
    s += n + 1;
    if (*s == '"' || *s == '\'') {
      ch = ch1 = ch2 = *s++;
    }
    p = s;
    while (p < end && p[0] != ch && p[0] != ch1 && p[0] != ch2) {
      if (ch != ' ' && p[0] == '\\' && p[1] == ch) p++;
      altbuf_append(ab, *p++);
    }

    if (ch != ' ' && *p != ch) {
      altbuf_reset(ab);
    }
  }


  if (ab->len > 0) {
    altbuf_append(ab, '\0');
  }
}
