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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  TidyDoc ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(const uint8_t *data, size_t size) {
    TidyDoc tdoc = FUNC2();

    // At the time this fuzzer was written, the configuration parser could
    // only be exercised via a file interface.
    char* tmpfile = FUNC0(data, size);
    FUNC3(tdoc, tmpfile);
    FUNC1(tmpfile);
    FUNC4(tdoc);
    return 0;
}