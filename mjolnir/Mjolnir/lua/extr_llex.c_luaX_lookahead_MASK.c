#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ token; int /*<<< orphan*/  seminfo; } ;
struct TYPE_6__ {TYPE_1__ lookahead; } ;
typedef  TYPE_2__ LexState ;

/* Variables and functions */
 scalar_t__ TK_EOS ; 
 scalar_t__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

int FUNC2 (LexState *ls) {
  FUNC1(ls->lookahead.token == TK_EOS);
  ls->lookahead.token = FUNC0(ls, &ls->lookahead.seminfo);
  return ls->lookahead.token;
}