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
struct altbuf {scalar_t__ len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct altbuf*,char) ; 
 int /*<<< orphan*/  FUNC1 (struct altbuf*) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*,int) ; 

__attribute__((used)) static void FUNC4(struct mg_str *hdr,
                                          const char *var_name,
                                          struct altbuf *ab) {
  int ch = ' ', ch1 = ',', ch2 = ';', n = FUNC2(var_name);
  const char *p, *end = hdr ? hdr->p + hdr->len : NULL, *s = NULL;

  /* Find where variable starts */
  for (s = hdr->p; s != NULL && s + n < end; s++) {
    if ((s == hdr->p || s[-1] == ch || s[-1] == ch1 || s[-1] == ';') &&
        s[n] == '=' && !FUNC3(s, var_name, n))
      break;
  }

  if (s != NULL && &s[n + 1] < end) {
    s += n + 1;
    if (*s == '"' || *s == '\'') {
      ch = ch1 = ch2 = *s++;
    }
    p = s;
    while (p < end && p[0] != ch && p[0] != ch1 && p[0] != ch2) {
      if (ch != ' ' && p[0] == '\\' && p[1] == ch) p++;
      FUNC0(ab, *p++);
    }

    if (ch != ' ' && *p != ch) {
      FUNC1(ab);
    }
  }

  /* If there is some data, append a NUL. */
  if (ab->len > 0) {
    FUNC0(ab, '\0');
  }
}