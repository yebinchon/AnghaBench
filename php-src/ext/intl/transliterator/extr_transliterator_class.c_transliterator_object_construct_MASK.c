#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_string ;
typedef  scalar_t__ int32_t ;
typedef  int /*<<< orphan*/  UTransliterator ;
typedef  int /*<<< orphan*/  UErrorCode ;
typedef  int /*<<< orphan*/  UChar ;
struct TYPE_2__ {int /*<<< orphan*/ * utrans; } ;
typedef  TYPE_1__ Transliterator_object ;

/* Variables and functions */
 int FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int SUCCESS ; 
 int /*<<< orphan*/  TRANSLITERATOR_METHOD_FETCH_OBJECT_NO_CHECK ; 
 int /*<<< orphan*/  Transliterator_ce_ptr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *) ; 

int FUNC6( zval *object,
									 UTransliterator *utrans,
									 UErrorCode *status )
{
	const UChar           *ustr_id;
	int32_t               ustr_id_len;
	zend_string           *u8str;
	zval                  tmp;
	Transliterator_object *to;

	TRANSLITERATOR_METHOD_FETCH_OBJECT_NO_CHECK;

	FUNC2( to->utrans == NULL );
	/* this assignment must happen before any return with failure because the
	 * caller relies on it always being made (so it can just destroy the object
	 * to close the transliterator) */
	to->utrans = utrans;

	ustr_id = FUNC4( utrans, &ustr_id_len );
	u8str = FUNC3(ustr_id, (int ) ustr_id_len, status );
	if( !u8str )
	{
		return FAILURE;
	}

	FUNC1(&tmp, u8str);
	FUNC5(Transliterator_ce_ptr, object,
		"id", sizeof( "id" ) - 1, &tmp );
	FUNC0(u8str);
	return SUCCESS;
}