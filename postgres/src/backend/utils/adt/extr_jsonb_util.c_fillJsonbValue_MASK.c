#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32 ;
struct TYPE_13__ {int /*<<< orphan*/ * children; } ;
struct TYPE_10__ {int len; TYPE_5__* data; } ;
struct TYPE_9__ {char* val; int len; } ;
struct TYPE_11__ {int boolean; TYPE_2__ binary; scalar_t__ numeric; TYPE_1__ string; } ;
struct TYPE_12__ {TYPE_3__ val; void* type; } ;
typedef  scalar_t__ Numeric ;
typedef  TYPE_4__ JsonbValue ;
typedef  TYPE_5__ JsonbContainer ;
typedef  int /*<<< orphan*/  JEntry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_5__*,int) ; 
 void* jbvBinary ; 
 void* jbvBool ; 
 void* jbvNull ; 
 void* jbvNumeric ; 
 void* jbvString ; 

__attribute__((used)) static void
FUNC9(JsonbContainer *container, int index,
			   char *base_addr, uint32 offset,
			   JsonbValue *result)
{
	JEntry		entry = container->children[index];

	if (FUNC5(entry))
	{
		result->type = jbvNull;
	}
	else if (FUNC7(entry))
	{
		result->type = jbvString;
		result->val.string.val = base_addr + offset;
		result->val.string.len = FUNC8(container, index);
		FUNC0(result->val.string.len >= 0);
	}
	else if (FUNC6(entry))
	{
		result->type = jbvNumeric;
		result->val.numeric = (Numeric) (base_addr + FUNC1(offset));
	}
	else if (FUNC3(entry))
	{
		result->type = jbvBool;
		result->val.boolean = true;
	}
	else if (FUNC2(entry))
	{
		result->type = jbvBool;
		result->val.boolean = false;
	}
	else
	{
		FUNC0(FUNC4(entry));
		result->type = jbvBinary;
		/* Remove alignment padding from data pointer and length */
		result->val.binary.data = (JsonbContainer *) (base_addr + FUNC1(offset));
		result->val.binary.len = FUNC8(container, index) -
			(FUNC1(offset) - offset);
	}
}