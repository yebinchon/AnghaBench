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
struct mg_str {char* p; scalar_t__ len; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*,size_t) ; 
 int FUNC2 (char const*,size_t,char*,size_t,int) ; 
 size_t FUNC3 (char const*) ; 

int FUNC4(const struct mg_str *buf, const char *name, char *dst,
                    size_t dst_len) {
  const char *p, *e, *s;
  size_t name_len;
  int len;

  /*
   * According to the documentation function returns negative
   * value in case of error. For debug purposes it returns:
   * -1 - src is wrong (NUUL)
   * -2 - dst is wrong (NULL)
   * -3 - failed to decode url or dst is to small
   * -4 - name does not exist
   */
  if (dst == NULL || dst_len == 0) {
    len = -2;
  } else if (buf->p == NULL || name == NULL || buf->len == 0) {
    len = -1;
    dst[0] = '\0';
  } else {
    name_len = FUNC3(name);
    e = buf->p + buf->len;
    len = -4;
    dst[0] = '\0';

    for (p = buf->p; p + name_len < e; p++) {
      if ((p == buf->p || p[-1] == '&') && p[name_len] == '=' &&
          !FUNC1(name, p, name_len)) {
        p += name_len + 1;
        s = (const char *) FUNC0(p, '&', (size_t)(e - p));
        if (s == NULL) {
          s = e;
        }
        len = FUNC2(p, (size_t)(s - p), dst, dst_len, 1);
        /* -1 means: failed to decode or dst is too small */
        if (len == -1) {
          len = -3;
        }
        break;
      }
    }
  }

  return len;
}