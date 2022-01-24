#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ type; } ;
struct TYPE_8__ {int /*<<< orphan*/  len; scalar_t__ data; } ;
typedef  TYPE_1__ StringInfoData ;
typedef  TYPE_2__ JsonbValue ;
typedef  int /*<<< orphan*/  Jsonb ;
typedef  int /*<<< orphan*/  JEntry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VARHDRSZ ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ jbvBinary ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Jsonb *
FUNC5(JsonbValue *val)
{
	StringInfoData buffer;
	JEntry		jentry;
	Jsonb	   *res;

	/* Should not already have binary representation */
	FUNC0(val->type != jbvBinary);

	/* Allocate an output buffer. It will be enlarged as needed */
	FUNC3(&buffer);

	/* Make room for the varlena header */
	FUNC4(&buffer, VARHDRSZ);

	FUNC2(&buffer, &jentry, val, 0);

	/*
	 * Note: the JEntry of the root is discarded. Therefore the root
	 * JsonbContainer struct must contain enough information to tell what kind
	 * of value it is.
	 */

	res = (Jsonb *) buffer.data;

	FUNC1(res, buffer.len);

	return res;
}