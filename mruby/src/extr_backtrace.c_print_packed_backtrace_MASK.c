#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct backtrace_location {char* filename; int lineno; scalar_t__ method_id; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int mrb_int ;
struct TYPE_2__ {scalar_t__ flags; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bt_type ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC6 (struct backtrace_location const*,int) ; 
 int /*<<< orphan*/ * stderr ; 

__attribute__((used)) static void
FUNC7(mrb_state *mrb, mrb_value packed)
{
  FILE *stream = stderr;
  const struct backtrace_location *bt;
  int n, i;
  int ai = FUNC4(mrb);

  bt = (struct backtrace_location*)FUNC2(mrb, packed, &bt_type);
  if (bt == NULL) return;
  n = (mrb_int)FUNC0(packed)->flags;

  if (FUNC6(bt, n) == 0) return;
  FUNC1(stream, "trace (most recent call last):\n");
  for (i = 0; i<n; i++) {
    const struct backtrace_location *entry = &bt[n-i-1];
    if (entry->filename == NULL) continue;
    FUNC1(stream, "\t[%d] %s:%d", i, entry->filename, entry->lineno);
    if (entry->method_id != 0) {
      const char *method_name;

      method_name = FUNC5(mrb, entry->method_id);
      FUNC1(stream, ":in %s", method_name);
      FUNC3(mrb, ai);
    }
    FUNC1(stream, "\n");
  }
}