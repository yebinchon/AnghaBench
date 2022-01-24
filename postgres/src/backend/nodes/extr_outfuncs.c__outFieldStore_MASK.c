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
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  FieldStore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  arg ; 
 int /*<<< orphan*/  fieldnums ; 
 int /*<<< orphan*/  newvals ; 
 int /*<<< orphan*/  resulttype ; 

__attribute__((used)) static void
FUNC3(StringInfo str, const FieldStore *node)
{
	FUNC1("FIELDSTORE");

	FUNC0(arg);
	FUNC0(newvals);
	FUNC0(fieldnums);
	FUNC2(resulttype);
}