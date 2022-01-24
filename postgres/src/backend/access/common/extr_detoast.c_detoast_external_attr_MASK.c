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
struct varlena {int dummy; } ;
struct varatt_indirect {scalar_t__ pointer; } ;
typedef  int /*<<< orphan*/  Size ;
typedef  int /*<<< orphan*/  ExpandedObjectHeader ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct varlena*) ; 
 int /*<<< orphan*/  FUNC5 (struct varatt_indirect,struct varlena*) ; 
 scalar_t__ FUNC6 (struct varlena*) ; 
 scalar_t__ FUNC7 (struct varlena*) ; 
 scalar_t__ FUNC8 (struct varlena*) ; 
 scalar_t__ FUNC9 (struct varlena*) ; 
 int /*<<< orphan*/  FUNC10 (struct varlena*) ; 
 int /*<<< orphan*/  FUNC11 (struct varlena*,struct varlena*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 struct varlena* FUNC13 (struct varlena*) ; 

struct varlena *
FUNC14(struct varlena *attr)
{
	struct varlena *result;

	if (FUNC9(attr))
	{
		/*
		 * This is an external stored plain value
		 */
		result = FUNC13(attr);
	}
	else if (FUNC8(attr))
	{
		/*
		 * This is an indirect pointer --- dereference it
		 */
		struct varatt_indirect redirect;

		FUNC5(redirect, attr);
		attr = (struct varlena *) redirect.pointer;

		/* nested indirect Datums aren't allowed */
		FUNC0(!FUNC8(attr));

		/* recurse if value is still external in some other way */
		if (FUNC6(attr))
			return FUNC14(attr);

		/*
		 * Copy into the caller's memory context, in case caller tries to
		 * pfree the result.
		 */
		result = (struct varlena *) FUNC12(FUNC10(attr));
		FUNC11(result, attr, FUNC10(attr));
	}
	else if (FUNC7(attr))
	{
		/*
		 * This is an expanded-object pointer --- get flat format
		 */
		ExpandedObjectHeader *eoh;
		Size		resultsize;

		eoh = FUNC1(FUNC4(attr));
		resultsize = FUNC3(eoh);
		result = (struct varlena *) FUNC12(resultsize);
		FUNC2(eoh, (void *) result, resultsize);
	}
	else
	{
		/*
		 * This is a plain value inside of the main tuple - why am I called?
		 */
		result = attr;
	}

	return result;
}