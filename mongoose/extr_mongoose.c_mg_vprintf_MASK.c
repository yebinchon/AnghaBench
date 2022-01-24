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
typedef  int /*<<< orphan*/  va_list ;
struct mg_connection {int dummy; } ;
typedef  int /*<<< orphan*/  mem ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int MG_VPRINTF_BUFFER_SIZE ; 
 int FUNC1 (char**,int,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mg_connection*,char*,int) ; 

int FUNC3(struct mg_connection *nc, const char *fmt, va_list ap) {
  char mem[MG_VPRINTF_BUFFER_SIZE], *buf = mem;
  int len;

  if ((len = FUNC1(&buf, sizeof(mem), fmt, ap)) > 0) {
    FUNC2(nc, buf, len);
  }
  if (buf != mem && buf != NULL) {
    FUNC0(buf); /* LCOV_EXCL_LINE */
  }               /* LCOV_EXCL_LINE */

  return len;
}