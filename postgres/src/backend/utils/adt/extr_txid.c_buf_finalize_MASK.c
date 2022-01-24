#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TxidSnapshot ;
struct TYPE_4__ {int /*<<< orphan*/ * data; int /*<<< orphan*/  len; } ;
typedef  TYPE_1__* StringInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static TxidSnapshot *
FUNC2(StringInfo buf)
{
	TxidSnapshot *snap = (TxidSnapshot *) buf->data;

	FUNC0(snap, buf->len);

	/* buf is not needed anymore */
	buf->data = NULL;
	FUNC1(buf);

	return snap;
}