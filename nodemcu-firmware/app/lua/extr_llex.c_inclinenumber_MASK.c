#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int current; scalar_t__ linenumber; } ;
typedef  TYPE_1__ LexState ;

/* Variables and functions */
 scalar_t__ MAX_INT ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC4 (LexState *ls) {
  int old = ls->current;
  FUNC2(FUNC0(ls));
  FUNC3(ls);  /* skip `\n' or `\r' */
  if (FUNC0(ls) && ls->current != old)
    FUNC3(ls);  /* skip `\n\r' or `\r\n' */
  if (++ls->linenumber >= MAX_INT)
    FUNC1(ls, "chunk has too many lines");
}