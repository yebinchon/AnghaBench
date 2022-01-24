#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_5__ {int param_count; int /*<<< orphan*/ * params; int /*<<< orphan*/ * retval; } ;
struct TYPE_4__ {int /*<<< orphan*/  fci_cache; TYPE_2__ fci; } ;
typedef  TYPE_1__ enumCharNames_data ;
typedef  int /*<<< orphan*/  UCharNameChoice ;
typedef  int /*<<< orphan*/  UChar32 ;
typedef  int UBool ;

/* Variables and functions */
 scalar_t__ FAILURE ; 
 int /*<<< orphan*/  U_INTERNAL_PROGRAM_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static UBool FUNC8(enumCharNames_data *context,
                                    UChar32 code, UCharNameChoice nameChoice,
                                    const char *name, int32_t length) {
	zval retval;
	zval args[3];

	FUNC1(&retval);
	FUNC0(&args[0], code);
	FUNC0(&args[1], nameChoice);
	FUNC2(&args[2], name, length);

	context->fci.retval = &retval;
	context->fci.param_count = 3;
	context->fci.params = args;

	if (FUNC5(&context->fci, &context->fci_cache) == FAILURE) {
		FUNC3(NULL, U_INTERNAL_PROGRAM_ERROR);
		FUNC4(NULL, "enumCharNames callback failed", 0);
		FUNC6(&retval);
		FUNC7(&args[2]);
		return 0;
	}
	FUNC6(&retval);
	FUNC7(&args[2]);
	return 1;
}