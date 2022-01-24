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
typedef  int /*<<< orphan*/  zval ;
typedef  int zend_prop_purpose ;
typedef  int /*<<< orphan*/  zend_object ;
struct TYPE_4__ {int /*<<< orphan*/  type; int /*<<< orphan*/  initialized; } ;
typedef  TYPE_1__ php_timezone_obj ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
#define  ZEND_PROP_PURPOSE_ARRAY_CAST 132 
#define  ZEND_PROP_PURPOSE_DEBUG 131 
#define  ZEND_PROP_PURPOSE_JSON 130 
#define  ZEND_PROP_PURPOSE_SERIALIZE 129 
#define  ZEND_PROP_PURPOSE_VAR_EXPORT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static HashTable *FUNC7(zend_object *object, zend_prop_purpose purpose) /* {{{ */
{
	HashTable *props;
	zval zv;
	php_timezone_obj *tzobj;

	switch (purpose) {
		case ZEND_PROP_PURPOSE_DEBUG:
		case ZEND_PROP_PURPOSE_SERIALIZE:
		case ZEND_PROP_PURPOSE_VAR_EXPORT:
		case ZEND_PROP_PURPOSE_JSON:
		case ZEND_PROP_PURPOSE_ARRAY_CAST:
			break;
		default:
			return FUNC6(object, purpose);
	}

	tzobj = FUNC1(object);
	props = FUNC3(FUNC5(object));
	if (!tzobj->initialized) {
		return props;
	}

	FUNC0(&zv, tzobj->type);
	FUNC4(props, "timezone_type", sizeof("timezone_type")-1, &zv);

	FUNC2(tzobj, &zv);
	FUNC4(props, "timezone", sizeof("timezone")-1, &zv);

	return props;
}