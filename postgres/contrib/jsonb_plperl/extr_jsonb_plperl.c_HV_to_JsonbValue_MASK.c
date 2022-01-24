#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  len; int /*<<< orphan*/  val; } ;
struct TYPE_8__ {TYPE_1__ string; } ;
struct TYPE_9__ {TYPE_2__ val; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  SV ;
typedef  TYPE_3__ JsonbValue ;
typedef  int /*<<< orphan*/  JsonbParseState ;
typedef  int /*<<< orphan*/  I32 ;
typedef  int /*<<< orphan*/  HV ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  WJB_BEGIN_OBJECT ; 
 int /*<<< orphan*/  WJB_END_OBJECT ; 
 int /*<<< orphan*/  WJB_KEY ; 
 int /*<<< orphan*/  dTHX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jbvString ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,TYPE_3__*) ; 

__attribute__((used)) static JsonbValue *
FUNC5(HV *obj, JsonbParseState **jsonb_state)
{
	dTHX;
	JsonbValue	key;
	SV		   *val;
	char	   *kstr;
	I32			klen;

	key.type = jbvString;

	FUNC4(jsonb_state, WJB_BEGIN_OBJECT, NULL);

	(void) FUNC1(obj);

	while ((val = FUNC2(obj, &kstr, &klen)))
	{
		key.val.string.val = FUNC3(kstr, klen);
		key.val.string.len = klen;
		FUNC4(jsonb_state, WJB_KEY, &key);
		(void) FUNC0(val, jsonb_state, false);
	}

	return FUNC4(jsonb_state, WJB_END_OBJECT, NULL);
}