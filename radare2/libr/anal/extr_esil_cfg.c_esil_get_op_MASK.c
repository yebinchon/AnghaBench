#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ ops; } ;
typedef  int /*<<< orphan*/  RAnalEsilOp ;
typedef  TYPE_1__ RAnalEsil ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC3 (scalar_t__,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char const*) ; 

RAnalEsilOp *FUNC5 (RAnalEsil *esil, const char *op) {
	FUNC0 (op && FUNC4 (op) && esil && esil->ops, NULL);
	char t[128];
	char *h = FUNC2 (FUNC1 (op), t, 16);
	return (RAnalEsilOp *)(size_t)FUNC3 (esil->ops, h, 0);
}