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
struct mg_str {int dummy; } ;
struct altbuf {scalar_t__ len; } ;

/* Variables and functions */
 char* FUNC0 (struct altbuf*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct altbuf*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct mg_str*,char const*,struct altbuf*) ; 

int FUNC3(struct mg_str *hdr, const char *var_name, char **buf,
                          size_t buf_size) {
  struct altbuf ab;
  FUNC1(&ab, *buf, buf_size);
  if (hdr == NULL) return 0;
  if (*buf != NULL && buf_size > 0) *buf[0] = '\0';

  FUNC2(hdr, var_name, &ab);

  /*
   * Get a (trimmed) buffer, and return a len without a NUL byte which might
   * have been added.
   */
  *buf = FUNC0(&ab, 1 /* trim */);
  return ab.len > 0 ? ab.len - 1 : 0;
}