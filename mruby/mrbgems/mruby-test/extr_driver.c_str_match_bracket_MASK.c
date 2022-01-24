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
typedef  scalar_t__ mrb_bool ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const,char const) ; 
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 char* FUNC1 (char const*,char const*) ; 

__attribute__((used)) static const char *
FUNC2(const char *p, const char *pat_end,
                  const char *s, const char *str_end)
{
  mrb_bool ok = FALSE, negated = FALSE;

  if (p == pat_end) return NULL;
  if (*p == '!' || *p == '^') {
    negated = TRUE;
    ++p;
  }

  while (*p != ']') {
    const char *t1 = p;
    if ((t1 = FUNC1(t1, pat_end)) == pat_end) return NULL;
    if ((p = t1 + 1) == pat_end) return NULL;
    if (p[0] == '-' && p[1] != ']') {
      const char *t2 = p + 1;
      if ((t2 = FUNC1(t2, pat_end)) == pat_end) return NULL;
      p = t2 + 1;
      if (!ok && FUNC0(*t1, *s) <= 0 && FUNC0(*s, *t2) <= 0) ok = TRUE;
    }
    else {
      if (!ok && FUNC0(*t1, *s) == 0) ok = TRUE;
    }
  }

  return ok == negated ? NULL : p + 1;
}