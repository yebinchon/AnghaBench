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
struct mg_str {size_t len; scalar_t__ p; } ;
struct mbuf {scalar_t__ len; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 unsigned int MG_URL_ENCODE_F_SPACE_AS_PLUS ; 
 unsigned int MG_URL_ENCODE_F_UPPERCASE_HEX ; 
 scalar_t__ FUNC0 (unsigned char const) ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*) ; 
 struct mg_str FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC5 (struct mg_str const,unsigned char const) ; 

struct mg_str FUNC6(const struct mg_str src,
                                const struct mg_str safe, unsigned int flags) {
  const char *hex =
      (flags & MG_URL_ENCODE_F_UPPERCASE_HEX ? "0123456789ABCDEF"
                                             : "0123456789abcdef");
  size_t i = 0;
  struct mbuf mb;
  FUNC2(&mb, src.len);

  for (i = 0; i < src.len; i++) {
    const unsigned char c = *((const unsigned char *) src.p + i);
    if (FUNC0(c) || FUNC5(safe, c) != NULL) {
      FUNC1(&mb, &c, 1);
    } else if (c == ' ' && (flags & MG_URL_ENCODE_F_SPACE_AS_PLUS)) {
      FUNC1(&mb, "+", 1);
    } else {
      FUNC1(&mb, "%", 1);
      FUNC1(&mb, &hex[c >> 4], 1);
      FUNC1(&mb, &hex[c & 15], 1);
    }
  }
  FUNC1(&mb, "", 1);
  FUNC3(&mb);
  return FUNC4(mb.buf, mb.len - 1);
}