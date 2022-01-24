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
struct mbuf {size_t len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mbuf*,...) ; 
 char* FUNC1 (char const*,char) ; 

int FUNC2(struct mbuf *io, const char *name, size_t len) {
  const char *s;
  unsigned char n;
  size_t pos = io->len;

  do {
    if ((s = FUNC1(name, '.')) == NULL) {
      s = name + len;
    }

    if (s - name > 127) {
      return -1; /* TODO(mkm) cover */
    }
    n = s - name;           /* chunk length */
    FUNC0(io, &n, 1); /* send length */
    FUNC0(io, name, n);

    if (*s == '.') {
      n++;
    }

    name += n;
    len -= n;
  } while (*s != '\0');
  FUNC0(io, "\0", 1); /* Mark end of host name */

  return io->len - pos;
}