#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* parsed_as; int error; int /*<<< orphan*/  error_msg; int /*<<< orphan*/  result; } ;
typedef  TYPE_1__ EVAL_EXPRESSION ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (char*,char const**,int*) ; 
 char* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC8(int argc, char **argv) {
	if(argc != 2) {
		FUNC6(stderr, "I need an epxression (enclose it in single-quotes (') as a single parameter)\n");
		FUNC1(1);
	}

	const char *failed_at = NULL;
	int error;

	EVAL_EXPRESSION *exp = FUNC4(argv[1], &failed_at, &error);
	if(!exp)
		FUNC7("\nPARSING FAILED\nExpression: '%s'\nParsing stopped at: '%s'\nParsing error code: %d (%s)\n", argv[1], (failed_at)?((*failed_at)?failed_at:"<END OF EXPRESSION>"):"<NONE>", error, FUNC5(error));
	
	else {
		FUNC7("\nPARSING OK\nExpression: '%s'\nParsed as : '%s'\nParsing error code: %d (%s)\n", argv[1], exp->parsed_as, error, FUNC5(error));

		if(FUNC2(exp)) {
			FUNC7("\nEvaluates to: %Lf\n\n", exp->result);
		}
		else {
			FUNC7("\nEvaluation failed with code %d and message: %s\n\n", exp->error, FUNC0(exp->error_msg));
		}
		FUNC3(exp);
	}

	return 0;
}