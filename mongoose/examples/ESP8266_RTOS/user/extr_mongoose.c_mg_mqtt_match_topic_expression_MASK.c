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
struct mg_str {scalar_t__ len; } ;

/* Variables and functions */
 struct mg_str FUNC0 (struct mg_str*) ; 
 scalar_t__ FUNC1 (struct mg_str,struct mg_str) ; 
 scalar_t__ FUNC2 (struct mg_str*,char*) ; 

int FUNC3(struct mg_str exp, struct mg_str topic) {
  struct mg_str ec, tc;
  if (exp.len == 0) return 0;
  while (1) {
    ec = FUNC0(&exp);
    tc = FUNC0(&topic);
    if (ec.len == 0) {
      if (tc.len != 0) return 0;
      if (exp.len == 0) break;
      continue;
    }
    if (FUNC2(&ec, "+") == 0) {
      if (tc.len == 0 && topic.len == 0) return 0;
      continue;
    }
    if (FUNC2(&ec, "#") == 0) {
      /* Must be the last component in the expression or it's invalid. */
      return (exp.len == 0);
    }
    if (FUNC1(ec, tc) != 0) {
      return 0;
    }
  }
  return (tc.len == 0 && topic.len == 0);
}