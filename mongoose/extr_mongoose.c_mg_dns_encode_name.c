
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {size_t len; } ;


 int mbuf_append (struct mbuf*,...) ;
 char* strchr (char const*,char) ;

int mg_dns_encode_name(struct mbuf *io, const char *name, size_t len) {
  const char *s;
  unsigned char n;
  size_t pos = io->len;

  do {
    if ((s = strchr(name, '.')) == ((void*)0)) {
      s = name + len;
    }

    if (s - name > 127) {
      return -1;
    }
    n = s - name;
    mbuf_append(io, &n, 1);
    mbuf_append(io, name, n);

    if (*s == '.') {
      n++;
    }

    name += n;
    len -= n;
  } while (*s != '\0');
  mbuf_append(io, "\0", 1);

  return io->len - pos;
}
