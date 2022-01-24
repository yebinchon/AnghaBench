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
typedef  int /*<<< orphan*/  TidyDoc ;
typedef  int /*<<< orphan*/  TidyBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  TidyForceOutput ; 
 int /*<<< orphan*/  TidyXhtmlOut ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  yes ; 

void FUNC9(TidyBuffer* data_buffer,
                     TidyBuffer* output_buffer,
                     TidyBuffer* error_buffer) {
    TidyDoc tdoc = FUNC2();
    if (FUNC8(tdoc, error_buffer) < 0) {
        FUNC0();
    }
    FUNC3(tdoc, TidyXhtmlOut, yes);
    FUNC3(tdoc, TidyForceOutput, yes);

    if (FUNC4(tdoc, data_buffer) >= 0 &&
            FUNC1(tdoc) >= 0 &&
            FUNC6(tdoc) >= 0) {
        FUNC7(tdoc, output_buffer);
    }
    FUNC5(tdoc);
}