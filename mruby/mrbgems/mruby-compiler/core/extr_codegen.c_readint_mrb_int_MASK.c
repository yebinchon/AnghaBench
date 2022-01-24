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
typedef  int mrb_int ;
typedef  scalar_t__ mrb_bool ;
typedef  int /*<<< orphan*/  codegen_scope ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int MRB_INT_MAX ; 
 int MRB_INT_MIN ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char* mrb_digitmap ; 
 int FUNC2 (char const*) ; 
 char FUNC3 (unsigned char) ; 

__attribute__((used)) static mrb_int
FUNC4(codegen_scope *s, const char *p, int base, mrb_bool neg, mrb_bool *overflow)
{
  const char *e = p + FUNC2(p);
  mrb_int result = 0;
  int n;

  FUNC1(base >= 2 && base <= 36);
  if (*p == '+') p++;
  while (p < e) {
    char c = *p;
    c = FUNC3((unsigned char)c);
    for (n=0; n<base; n++) {
      if (mrb_digitmap[n] == c) {
        break;
      }
    }
    if (n == base) {
      FUNC0(s, "malformed readint input");
    }

    if (neg) {
      if ((MRB_INT_MIN + n)/base > result) {
        *overflow = TRUE;
        return 0;
      }
      result *= base;
      result -= n;
    }
    else {
      if ((MRB_INT_MAX - n)/base < result) {
        *overflow = TRUE;
        return 0;
      }
      result *= base;
      result += n;
    }
    p++;
  }
  *overflow = FALSE;
  return result;
}