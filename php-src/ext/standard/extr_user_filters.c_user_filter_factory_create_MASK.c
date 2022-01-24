#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  scalar_t__ uint8_t ;
struct php_user_filter_data {int /*<<< orphan*/ * ce; int /*<<< orphan*/  classname; } ;
struct TYPE_6__ {int /*<<< orphan*/  abstract; } ;
typedef  TYPE_1__ php_stream_filter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_WARNING ; 
 scalar_t__ FAILURE ; 
 scalar_t__ IS_FALSE ; 
 scalar_t__ IS_UNDEF ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  le_userfilters ; 
 int /*<<< orphan*/  FUNC14 (char*,char const*,size_t) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 TYPE_1__* FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 char* FUNC19 (size_t,int,int) ; 
 size_t FUNC20 (char const*) ; 
 char* FUNC21 (char const*,char) ; 
 int /*<<< orphan*/  user_filter_map ; 
 int /*<<< orphan*/  userfilter_ops ; 
 struct php_user_filter_data* FUNC22 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/ * FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static php_stream_filter *FUNC26(const char *filtername,
		zval *filterparams, uint8_t persistent)
{
	struct php_user_filter_data *fdat = NULL;
	php_stream_filter *filter;
	zval obj, zfilter;
	zval func_name;
	zval retval;
	size_t len;

	/* some sanity checks */
	if (persistent) {
		FUNC16(NULL, E_WARNING,
				"cannot use a user-space filter with a persistent stream");
		return NULL;
	}

	len = FUNC20(filtername);

	/* determine the classname/class entry */
	if (NULL == (fdat = FUNC22(FUNC0(user_filter_map), (char*)filtername, len))) {
		char *period;

		/* Userspace Filters using ambiguous wildcards could cause problems.
           i.e.: myfilter.foo.bar will always call into myfilter.foo.*
                 never seeing myfilter.*
           TODO: Allow failed userfilter creations to continue
                 scanning through the list */
		if ((period = FUNC21(filtername, '.'))) {
			char *wildcard = FUNC19(len, 1, 3);

			/* Search for wildcard matches instead */
			FUNC14(wildcard, filtername, len + 1); /* copy \0 */
			period = wildcard + (period - filtername);
			while (period) {
				FUNC1(period[0] == '.');
				period[1] = '*';
				period[2] = '\0';
				if (NULL != (fdat = FUNC22(FUNC0(user_filter_map), wildcard, FUNC20(wildcard)))) {
					period = NULL;
				} else {
					*period = '\0';
					period = FUNC21(wildcard, '.');
				}
			}
			FUNC13(wildcard);
		}
		if (fdat == NULL) {
			FUNC16(NULL, E_WARNING,
					"Err, filter \"%s\" is not in the user-filter map, but somehow the user-filter-factory was invoked for it!?", filtername);
			return NULL;
		}
	}

	/* bind the classname to the actual class */
	if (fdat->ce == NULL) {
		if (NULL == (fdat->ce = FUNC23(fdat->classname))) {
			FUNC16(NULL, E_WARNING,
					"user-filter \"%s\" requires class \"%s\", but that class is not defined",
					filtername, FUNC2(fdat->classname));
			return NULL;
		}
	}

	/* create the object */
	if (FUNC15(&obj, fdat->ce) == FAILURE) {
		return NULL;
	}

	filter = FUNC17(&userfilter_ops, NULL, 0);
	if (filter == NULL) {
		FUNC25(&obj);
		return NULL;
	}

	/* filtername */
	FUNC10(&obj, "filtername", (char*)filtername);

	/* and the parameters, if any */
	if (filterparams) {
		FUNC11(&obj, "params", filterparams);
	} else {
		FUNC9(&obj, "params");
	}

	/* invoke the constructor */
	FUNC5(&func_name, "oncreate", sizeof("oncreate")-1);

	FUNC12(NULL,
			&obj,
			&func_name,
			&retval,
			0, NULL);

	if (FUNC8(retval) != IS_UNDEF) {
		if (FUNC8(retval) == IS_FALSE) {
			/* User reported filter creation error "return false;" */
			FUNC25(&retval);

			/* Kill the filter (safely) */
			FUNC6(&filter->abstract);
			FUNC18(filter);

			/* Kill the object */
			FUNC25(&obj);

			/* Report failure to filter_alloc */
			return NULL;
		}
		FUNC25(&retval);
	}
	FUNC25(&func_name);

	/* set the filter property, this will be used during cleanup */
	FUNC4(&zfilter, FUNC24(filter, le_userfilters));
	FUNC3(&filter->abstract, FUNC7(obj));
	FUNC11(&obj, "filter", &zfilter);
	/* add_property_zval increments the refcount which is unwanted here */
	FUNC25(&zfilter);

	return filter;
}