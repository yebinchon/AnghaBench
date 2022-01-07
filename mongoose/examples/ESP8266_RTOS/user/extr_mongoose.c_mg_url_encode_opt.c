
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_str {size_t len; scalar_t__ p; } ;
struct mbuf {scalar_t__ len; int buf; } ;


 unsigned int MG_URL_ENCODE_F_SPACE_AS_PLUS ;
 unsigned int MG_URL_ENCODE_F_UPPERCASE_HEX ;
 scalar_t__ isalnum (unsigned char const) ;
 int mbuf_append (struct mbuf*,...) ;
 int mbuf_init (struct mbuf*,size_t) ;
 int mbuf_trim (struct mbuf*) ;
 struct mg_str mg_mk_str_n (int ,scalar_t__) ;
 int * mg_strchr (struct mg_str const,unsigned char const) ;

struct mg_str mg_url_encode_opt(const struct mg_str src,
                                const struct mg_str safe, unsigned int flags) {
  const char *hex =
      (flags & MG_URL_ENCODE_F_UPPERCASE_HEX ? "0123456789ABCDEF"
                                             : "0123456789abcdef");
  size_t i = 0;
  struct mbuf mb;
  mbuf_init(&mb, src.len);

  for (i = 0; i < src.len; i++) {
    const unsigned char c = *((const unsigned char *) src.p + i);
    if (isalnum(c) || mg_strchr(safe, c) != ((void*)0)) {
      mbuf_append(&mb, &c, 1);
    } else if (c == ' ' && (flags & MG_URL_ENCODE_F_SPACE_AS_PLUS)) {
      mbuf_append(&mb, "+", 1);
    } else {
      mbuf_append(&mb, "%", 1);
      mbuf_append(&mb, &hex[c >> 4], 1);
      mbuf_append(&mb, &hex[c & 15], 1);
    }
  }
  mbuf_append(&mb, "", 1);
  mbuf_trim(&mb);
  return mg_mk_str_n(mb.buf, mb.len - 1);
}
