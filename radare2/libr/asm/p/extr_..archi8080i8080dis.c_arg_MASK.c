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
struct arg_t {int type; int const shift; int const mask; int /*<<< orphan*/ * fmt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(char* s, int const cmd, struct arg_t const* arg, int val) {
  if (arg->type == 3) {
    FUNC1(s, arg->fmt[(cmd >> arg->shift) & arg->mask]);
  } else {
    if (arg->type == 1)
      FUNC0(s, "%02X", val & 0xff);
    else if (arg->type == 2)
      FUNC0(s, "%04X", val);
  }
}