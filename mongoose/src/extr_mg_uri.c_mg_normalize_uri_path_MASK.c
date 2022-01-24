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
struct mg_str {char* p; int len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 scalar_t__ FUNC1 (struct mg_str*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char const**,char const*,char*,struct mg_str*) ; 

int FUNC3(const struct mg_str *in, struct mg_str *out) {
  const char *s = in->p, *se = s + in->len;
  char *cp = (char *) out->p, *d;

  if (in->len == 0 || *s != '/') {
    out->len = 0;
    return 0;
  }

  d = cp;

  while (s < se) {
    const char *next = s;
    struct mg_str component;
    FUNC2(&next, se, "/", &component);
    if (FUNC1(&component, ".") == 0) {
      /* Yum. */
    } else if (FUNC1(&component, "..") == 0) {
      /* Backtrack to previous slash. */
      if (d > cp + 1 && *(d - 1) == '/') d--;
      while (d > cp && *(d - 1) != '/') d--;
    } else {
      FUNC0(d, s, next - s);
      d += next - s;
    }
    s = next;
  }
  if (d == cp) *d++ = '/';

  out->p = cp;
  out->len = d - cp;
  return 1;
}