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
struct TYPE_4__ {int /*<<< orphan*/  elemtype; scalar_t__ dataoffset; scalar_t__ ndim; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__ ArrayType ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 scalar_t__ FUNC1 (int) ; 

ArrayType *
FUNC2(Oid elmtype)
{
	ArrayType  *result;

	result = (ArrayType *) FUNC1(sizeof(ArrayType));
	FUNC0(result, sizeof(ArrayType));
	result->ndim = 0;
	result->dataoffset = 0;
	result->elemtype = elmtype;
	return result;
}