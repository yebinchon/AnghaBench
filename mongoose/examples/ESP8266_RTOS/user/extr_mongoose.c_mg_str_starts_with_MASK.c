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
struct mg_str {scalar_t__ len; int /*<<< orphan*/  p; } ;

/* Variables and functions */
 struct mg_str FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (struct mg_str const,struct mg_str) ; 

int FUNC2(struct mg_str s, struct mg_str prefix) {
  const struct mg_str sp = FUNC0(s.p, prefix.len);
  if (s.len < prefix.len) return 0;
  return (FUNC1(sp, prefix) == 0);
}