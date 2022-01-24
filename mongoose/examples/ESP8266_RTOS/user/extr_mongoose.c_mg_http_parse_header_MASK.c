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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct mg_str*,char const*,char**,size_t) ; 

int FUNC2(struct mg_str *hdr, const char *var_name, char *buf,
                         size_t buf_size) {
  char *buf2 = buf;

  int len = FUNC1(hdr, var_name, &buf2, buf_size);

  if (buf2 != buf) {
    /* Buffer was not enough and was reallocated: free it and just return 0 */
    FUNC0(buf2);
    return 0;
  }

  return len;
}