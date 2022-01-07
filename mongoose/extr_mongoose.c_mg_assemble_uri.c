
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_str {int len; char* p; } ;
struct mbuf {char* buf; int len; } ;


 int free (void*) ;
 int mbuf_append (struct mbuf*,char*,int) ;
 int mbuf_free (struct mbuf*) ;
 int mbuf_init (struct mbuf*,int ) ;
 int mg_normalize_uri_path (struct mg_str const*,struct mg_str*) ;
 struct mg_str mg_strdup (struct mg_str const) ;
 int sprintf (char*,char*,unsigned int) ;

int mg_assemble_uri(const struct mg_str *scheme, const struct mg_str *user_info,
                    const struct mg_str *host, unsigned int port,
                    const struct mg_str *path, const struct mg_str *query,
                    const struct mg_str *fragment, int normalize_path,
                    struct mg_str *uri) {
  int result = -1;
  struct mbuf out;
  mbuf_init(&out, 0);

  if (scheme != ((void*)0) && scheme->len > 0) {
    mbuf_append(&out, scheme->p, scheme->len);
    mbuf_append(&out, "://", 3);
  }

  if (user_info != ((void*)0) && user_info->len > 0) {
    mbuf_append(&out, user_info->p, user_info->len);
    mbuf_append(&out, "@", 1);
  }

  if (host != ((void*)0) && host->len > 0) {
    mbuf_append(&out, host->p, host->len);
  }

  if (port != 0) {
    char port_str[20];
    int port_str_len = sprintf(port_str, ":%u", port);
    mbuf_append(&out, port_str, port_str_len);
  }

  if (path != ((void*)0) && path->len > 0) {
    if (normalize_path) {
      struct mg_str npath = mg_strdup(*path);
      if (npath.len != path->len) goto out;
      if (!mg_normalize_uri_path(path, &npath)) {
        free((void *) npath.p);
        goto out;
      }
      mbuf_append(&out, npath.p, npath.len);
      free((void *) npath.p);
    } else {
      mbuf_append(&out, path->p, path->len);
    }
  } else if (normalize_path) {
    mbuf_append(&out, "/", 1);
  }

  if (query != ((void*)0) && query->len > 0) {
    mbuf_append(&out, "?", 1);
    mbuf_append(&out, query->p, query->len);
  }

  if (fragment != ((void*)0) && fragment->len > 0) {
    mbuf_append(&out, "#", 1);
    mbuf_append(&out, fragment->p, fragment->len);
  }

  result = 0;

out:
  if (result == 0) {
    uri->p = out.buf;
    uri->len = out.len;
  } else {
    mbuf_free(&out);
    uri->p = ((void*)0);
    uri->len = 0;
  }
  return result;
}
