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
typedef  int /*<<< orphan*/  bytea ;
struct TYPE_3__ {int /*<<< orphan*/  len; scalar_t__ data; } ;
typedef  TYPE_1__* StringInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VARHDRSZ ; 

bytea *
FUNC2(StringInfo buf)
{
	bytea	   *result = (bytea *) buf->data;

	/* Insert correct length into bytea length word */
	FUNC0(buf->len >= VARHDRSZ);
	FUNC1(result, buf->len);

	return result;
}