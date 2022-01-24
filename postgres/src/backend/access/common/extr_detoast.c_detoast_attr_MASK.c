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
typedef  scalar_t__ Size ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct varlena*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct varatt_indirect,struct varlena*) ; 
 scalar_t__ FUNC3 (struct varlena*) ; 
 int /*<<< orphan*/  FUNC4 (struct varlena*) ; 
 scalar_t__ FUNC5 (struct varlena*) ; 
 scalar_t__ FUNC6 (struct varlena*) ; 
 scalar_t__ FUNC7 (struct varlena*) ; 
 scalar_t__ FUNC8 (struct varlena*) ; 
 struct varlena* FUNC9 (struct varlena*) ; 
 struct varlena* FUNC10 (struct varlena*) ; 
 scalar_t__ VARHDRSZ ; 
 scalar_t__ VARHDRSZ_SHORT ; 
 scalar_t__ FUNC11 (struct varlena*) ; 
 scalar_t__ FUNC12 (struct varlena*) ; 
 struct varlena* FUNC13 (struct varlena*) ; 
 int /*<<< orphan*/  FUNC14 (struct varlena*,struct varlena*,scalar_t__) ; 
 scalar_t__ FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (struct varlena*) ; 
 struct varlena* FUNC17 (struct varlena*) ; 
 struct varlena* FUNC18 (struct varlena*) ; 

struct varlena *
FUNC19(struct varlena *attr)
{
	if (FUNC7(attr))
	{
		/*
		 * This is an externally stored datum --- fetch it back from there
		 */
		attr = FUNC18(attr);
		/* If it's compressed, decompress it */
		if (FUNC3(attr))
		{
			struct varlena *tmp = attr;

			attr = FUNC17(tmp);
			FUNC16(tmp);
		}
	}
	else if (FUNC6(attr))
	{
		/*
		 * This is an indirect pointer --- dereference it
		 */
		struct varatt_indirect redirect;

		FUNC2(redirect, attr);
		attr = (struct varlena *) redirect.pointer;

		/* nested indirect Datums aren't allowed */
		FUNC0(!FUNC6(attr));

		/* recurse in case value is still extended in some other way */
		attr = FUNC19(attr);

		/* if it isn't, we'd better copy it */
		if (attr == (struct varlena *) redirect.pointer)
		{
			struct varlena *result;

			result = (struct varlena *) FUNC15(FUNC11(attr));
			FUNC14(result, attr, FUNC11(attr));
			attr = result;
		}
	}
	else if (FUNC5(attr))
	{
		/*
		 * This is an expanded-object pointer --- get flat format
		 */
		attr = FUNC13(attr);
		/* flatteners are not allowed to produce compressed/short output */
		FUNC0(!FUNC4(attr));
	}
	else if (FUNC3(attr))
	{
		/*
		 * This is a compressed value inside of the main tuple
		 */
		attr = FUNC17(attr);
	}
	else if (FUNC8(attr))
	{
		/*
		 * This is a short-header varlena --- convert to 4-byte header format
		 */
		Size		data_size = FUNC12(attr) - VARHDRSZ_SHORT;
		Size		new_size = data_size + VARHDRSZ;
		struct varlena *new_attr;

		new_attr = (struct varlena *) FUNC15(new_size);
		FUNC1(new_attr, new_size);
		FUNC14(FUNC9(new_attr), FUNC10(attr), data_size);
		attr = new_attr;
	}

	return attr;
}