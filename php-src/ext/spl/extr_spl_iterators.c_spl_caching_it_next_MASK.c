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
typedef  int /*<<< orphan*/  zval ;
struct TYPE_11__ {int flags; int /*<<< orphan*/  zstr; int /*<<< orphan*/  zchildren; int /*<<< orphan*/  zcache; } ;
struct TYPE_12__ {TYPE_3__ caching; } ;
struct TYPE_10__ {int /*<<< orphan*/  data; int /*<<< orphan*/  key; } ;
struct TYPE_9__ {int /*<<< orphan*/  zobject; int /*<<< orphan*/  ce; } ;
struct TYPE_13__ {scalar_t__ dit_type; TYPE_4__ u; TYPE_2__ current; TYPE_1__ inner; } ;
typedef  TYPE_5__ spl_dual_it_object ;

/* Variables and functions */
 int CIT_CALL_TOSTRING ; 
 int CIT_CATCH_GET_CHILD ; 
 int CIT_FULL_CACHE ; 
 int CIT_PUBLIC ; 
 int CIT_TOSTRING_USE_INNER ; 
 int CIT_VALID ; 
 scalar_t__ DIT_RecursiveCachingIterator ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  exception ; 
 int /*<<< orphan*/  spl_ce_RecursiveCachingIterator ; 
 scalar_t__ FUNC9 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC17(spl_dual_it_object *intern)
{
	if (FUNC9(intern, 1) == SUCCESS) {
		intern->u.caching.flags |= CIT_VALID;
		/* Full cache ? */
		if (intern->u.caching.flags & CIT_FULL_CACHE) {
			zval *key = &intern->current.key;
			zval *data = &intern->current.data;

			FUNC2(data);
			FUNC7(data);
			FUNC8(FUNC4(intern->u.caching.zcache), key, data);
			FUNC16(data);
		}
		/* Recursion ? */
		if (intern->dit_type == DIT_RecursiveCachingIterator) {
			zval retval, zchildren, zflags;
			FUNC12(FUNC5(intern->inner.zobject), intern->inner.ce, NULL, "haschildren", &retval);
			if (FUNC0(exception)) {
				FUNC16(&retval);
				if (intern->u.caching.flags & CIT_CATCH_GET_CHILD) {
					FUNC13();
				} else {
					return;
				}
			} else {
				if (FUNC14(&retval)) {
					FUNC12(FUNC5(intern->inner.zobject), intern->inner.ce, NULL, "getchildren", &zchildren);
					if (FUNC0(exception)) {
						FUNC16(&zchildren);
						if (intern->u.caching.flags & CIT_CATCH_GET_CHILD) {
							FUNC13();
						} else {
							FUNC16(&retval);
							return;
						}
					} else {
						FUNC3(&zflags, intern->u.caching.flags & CIT_PUBLIC);
						FUNC11(spl_ce_RecursiveCachingIterator, &intern->u.caching.zchildren, &zchildren, &zflags);
						FUNC16(&zchildren);
					}
				}
				FUNC16(&retval);
				if (FUNC0(exception)) {
					if (intern->u.caching.flags & CIT_CATCH_GET_CHILD) {
						FUNC13();
					} else {
						return;
					}
				}
			}
		}
		if (intern->u.caching.flags & (CIT_TOSTRING_USE_INNER|CIT_CALL_TOSTRING)) {
			int  use_copy;
			zval expr_copy;
			if (intern->u.caching.flags & CIT_TOSTRING_USE_INNER) {
				FUNC1(&intern->u.caching.zstr, &intern->inner.zobject);
			} else {
				FUNC1(&intern->u.caching.zstr, &intern->current.data);
			}
			use_copy = FUNC15(&intern->u.caching.zstr, &expr_copy);
			if (use_copy) {
				FUNC1(&intern->u.caching.zstr, &expr_copy);
			} else {
				FUNC6(intern->u.caching.zstr);
			}
		}
		FUNC10(intern, 0);
	} else {
		intern->u.caching.flags &= ~CIT_VALID;
	}
}