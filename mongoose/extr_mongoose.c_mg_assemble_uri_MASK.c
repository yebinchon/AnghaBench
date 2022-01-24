#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mg_str {int len; char* p; } ;
struct mbuf {char* buf; int len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mg_str const*,struct mg_str*) ; 
 struct mg_str FUNC5 (struct mg_str const) ; 
 int FUNC6 (char*,char*,unsigned int) ; 

int FUNC7(const struct mg_str *scheme, const struct mg_str *user_info,
                    const struct mg_str *host, unsigned int port,
                    const struct mg_str *path, const struct mg_str *query,
                    const struct mg_str *fragment, int normalize_path,
                    struct mg_str *uri) {
  int result = -1;
  struct mbuf out;
  FUNC3(&out, 0);

  if (scheme != NULL && scheme->len > 0) {
    FUNC1(&out, scheme->p, scheme->len);
    FUNC1(&out, "://", 3);
  }

  if (user_info != NULL && user_info->len > 0) {
    FUNC1(&out, user_info->p, user_info->len);
    FUNC1(&out, "@", 1);
  }

  if (host != NULL && host->len > 0) {
    FUNC1(&out, host->p, host->len);
  }

  if (port != 0) {
    char port_str[20];
    int port_str_len = FUNC6(port_str, ":%u", port);
    FUNC1(&out, port_str, port_str_len);
  }

  if (path != NULL && path->len > 0) {
    if (normalize_path) {
      struct mg_str npath = FUNC5(*path);
      if (npath.len != path->len) goto out;
      if (!FUNC4(path, &npath)) {
        FUNC0((void *) npath.p);
        goto out;
      }
      FUNC1(&out, npath.p, npath.len);
      FUNC0((void *) npath.p);
    } else {
      FUNC1(&out, path->p, path->len);
    }
  } else if (normalize_path) {
    FUNC1(&out, "/", 1);
  }

  if (query != NULL && query->len > 0) {
    FUNC1(&out, "?", 1);
    FUNC1(&out, query->p, query->len);
  }

  if (fragment != NULL && fragment->len > 0) {
    FUNC1(&out, "#", 1);
    FUNC1(&out, fragment->p, fragment->len);
  }

  result = 0;

out:
  if (result == 0) {
    uri->p = out.buf;
    uri->len = out.len;
  } else {
    FUNC2(&out);
    uri->p = NULL;
    uri->len = 0;
  }
  return result;
}