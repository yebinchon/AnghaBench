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
struct TYPE_5__ {int /*<<< orphan*/  lnglen; } ;
struct TYPE_6__ {scalar_t__ tt; int extra; unsigned int hash; TYPE_1__ u; } ;
typedef  TYPE_2__ TString ;

/* Variables and functions */
 scalar_t__ LUA_TLNGSTR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

unsigned int FUNC3 (TString *ts) {
  FUNC2(ts->tt == LUA_TLNGSTR);
  if (ts->extra == 0) {  /* no hash? */
    ts->hash = FUNC1(FUNC0(ts), ts->u.lnglen, ts->hash);
    ts->extra = 1;  /* now it has its hash */
  }
  return ts->hash;
}