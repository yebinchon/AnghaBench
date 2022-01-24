#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  instr_time ;
struct TYPE_11__ {scalar_t__ format; int indent; scalar_t__ timing; scalar_t__ analyze; int /*<<< orphan*/  str; } ;
struct TYPE_10__ {int created_functions; int /*<<< orphan*/  emission_counter; int /*<<< orphan*/  optimization_counter; int /*<<< orphan*/  inlining_counter; int /*<<< orphan*/  generation_counter; } ;
typedef  TYPE_1__ JitInstrumentation ;
typedef  TYPE_2__ ExplainState ;

/* Variables and functions */
 scalar_t__ EXPLAIN_FORMAT_TEXT ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,double,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 double FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int PGJIT_DEFORM ; 
 int PGJIT_EXPR ; 
 int PGJIT_INLINE ; 
 int PGJIT_OPT3 ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 

void
FUNC11(ExplainState *es, int jit_flags,
				JitInstrumentation *ji, int worker_num)
{
	instr_time	total_time;
	bool		for_workers = (worker_num >= 0);

	/* don't print information if no JITing happened */
	if (!ji || ji->created_functions == 0)
		return;

	/* calculate total time */
	FUNC7(total_time);
	FUNC5(total_time, ji->generation_counter);
	FUNC5(total_time, ji->inlining_counter);
	FUNC5(total_time, ji->optimization_counter);
	FUNC5(total_time, ji->emission_counter);

	FUNC1("JIT", "JIT", true, es);

	/* for higher density, open code the text output format */
	if (es->format == EXPLAIN_FORMAT_TEXT)
	{
		FUNC9(es->str, es->indent * 2);
		if (for_workers)
			FUNC8(es->str, "JIT for worker %u:\n", worker_num);
		else
			FUNC10(es->str, "JIT:\n");
		es->indent += 1;

		FUNC4("Functions", NULL, ji->created_functions, es);

		FUNC9(es->str, es->indent * 2);
		FUNC8(es->str, "Options: %s %s, %s %s, %s %s, %s %s\n",
						 "Inlining", jit_flags & PGJIT_INLINE ? "true" : "false",
						 "Optimization", jit_flags & PGJIT_OPT3 ? "true" : "false",
						 "Expressions", jit_flags & PGJIT_EXPR ? "true" : "false",
						 "Deforming", jit_flags & PGJIT_DEFORM ? "true" : "false");

		if (es->analyze && es->timing)
		{
			FUNC9(es->str, es->indent * 2);
			FUNC8(es->str,
							 "Timing: %s %.3f ms, %s %.3f ms, %s %.3f ms, %s %.3f ms, %s %.3f ms\n",
							 "Generation", 1000.0 * FUNC6(ji->generation_counter),
							 "Inlining", 1000.0 * FUNC6(ji->inlining_counter),
							 "Optimization", 1000.0 * FUNC6(ji->optimization_counter),
							 "Emission", 1000.0 * FUNC6(ji->emission_counter),
							 "Total", 1000.0 * FUNC6(total_time));
		}

		es->indent -= 1;
	}
	else
	{
		FUNC4("Worker Number", NULL, worker_num, es);
		FUNC4("Functions", NULL, ji->created_functions, es);

		FUNC1("Options", "Options", true, es);
		FUNC2("Inlining", jit_flags & PGJIT_INLINE, es);
		FUNC2("Optimization", jit_flags & PGJIT_OPT3, es);
		FUNC2("Expressions", jit_flags & PGJIT_EXPR, es);
		FUNC2("Deforming", jit_flags & PGJIT_DEFORM, es);
		FUNC0("Options", "Options", true, es);

		if (es->analyze && es->timing)
		{
			FUNC1("Timing", "Timing", true, es);

			FUNC3("Generation", "ms",
								 1000.0 * FUNC6(ji->generation_counter),
								 3, es);
			FUNC3("Inlining", "ms",
								 1000.0 * FUNC6(ji->inlining_counter),
								 3, es);
			FUNC3("Optimization", "ms",
								 1000.0 * FUNC6(ji->optimization_counter),
								 3, es);
			FUNC3("Emission", "ms",
								 1000.0 * FUNC6(ji->emission_counter),
								 3, es);
			FUNC3("Total", "ms",
								 1000.0 * FUNC6(total_time),
								 3, es);

			FUNC0("Timing", "Timing", true, es);
		}
	}

	FUNC0("JIT", "JIT", true, es);
}