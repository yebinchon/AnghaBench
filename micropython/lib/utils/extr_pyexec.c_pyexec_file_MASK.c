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

/* Variables and functions */
 int /*<<< orphan*/  EXEC_FLAG_SOURCE_IS_FILENAME ; 
 int /*<<< orphan*/  MP_PARSE_FILE_INPUT ; 
 int FUNC0 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC1(const char *filename) {
    return FUNC0(filename, MP_PARSE_FILE_INPUT, EXEC_FLAG_SOURCE_IS_FILENAME);
}