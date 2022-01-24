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
struct TYPE_5__ {int /*<<< orphan*/ * bio; } ;
typedef  TYPE_1__ tracedata ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int BIO_FP_TEXT ; 
 int BIO_NOCLOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 char* FUNC6 (int) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/ * internal_trace_cb ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  trace_data_stack ; 

__attribute__((used)) static void FUNC11(int category)
{
    BIO *channel;
    tracedata *trace_data;

    if (FUNC5(category))
        return;

    channel = FUNC3(FUNC1(FUNC8()),
                       FUNC2(stderr, BIO_NOCLOSE | BIO_FP_TEXT));
    trace_data = FUNC4(sizeof(*trace_data));

    if (trace_data == NULL
        || (trace_data->bio = channel) == NULL
        || FUNC7(category, internal_trace_cb,
                                   trace_data) == 0
        || FUNC10(trace_data_stack, trace_data) == 0) {

        FUNC9(stderr,
                "warning: unable to setup trace callback for category '%s'.\n",
                FUNC6(category));

        FUNC7(category, NULL, NULL);
        FUNC0(channel);
    }
}