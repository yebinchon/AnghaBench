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
struct mg_str {char const* p; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 struct mg_str FUNC1 (int /*<<< orphan*/ ,struct mg_str*,struct mg_str*) ; 

const char *FUNC2(const char *list, struct mg_str *val,
                                     struct mg_str *eq_val) {
  struct mg_str ret = FUNC1(FUNC0(list), val, eq_val);
  return ret.p;
}