#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {size_t len; } ;
struct TYPE_7__ {TYPE_1__ tsv; } ;
typedef  TYPE_2__ TString ;

/* Variables and functions */
 char* FUNC0 (TYPE_2__ const*) ; 
 int FUNC1 (char const*,char const*) ; 
 size_t FUNC2 (char const*) ; 

__attribute__((used)) static int FUNC3 (const TString *ls, const TString *rs) {
  const char *l = FUNC0(ls);
  size_t ll = ls->tsv.len;
  const char *r = FUNC0(rs);
  size_t lr = rs->tsv.len;
  for (;;) {
    int temp = FUNC1(l, r);
    if (temp != 0) return temp;
    else {  /* strings are equal up to a `\0' */
      size_t len = FUNC2(l);  /* index of first `\0' in both strings */
      if (len == lr)  /* r is finished? */
        return (len == ll) ? 0 : 1;
      else if (len == ll)  /* l is finished? */
        return -1;  /* l is smaller than r (because r is not finished) */
      /* both strings longer than `len'; go on comparing (after the `\0') */
      len++;
      l += len; ll -= len; r += len; lr -= len;
    }
  }
}