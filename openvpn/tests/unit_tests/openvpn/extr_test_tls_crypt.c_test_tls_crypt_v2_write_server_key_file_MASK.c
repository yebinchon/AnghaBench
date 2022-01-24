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
 int /*<<< orphan*/  __wrap_buffer_write_file ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,char const*) ; 
 char const* pem ; 
 char const* test_server_key ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(void **state) {
    const char *filename = "testfilename.key";

    FUNC0(__wrap_buffer_write_file, filename, filename);
    FUNC0(__wrap_buffer_write_file, pem, test_server_key);
    FUNC2(__wrap_buffer_write_file, true);

    FUNC1(filename);
}