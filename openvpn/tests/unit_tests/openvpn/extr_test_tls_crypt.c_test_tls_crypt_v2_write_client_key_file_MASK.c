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
 int /*<<< orphan*/  INLINE_FILE_TAG ; 
 int /*<<< orphan*/  __wrap_buffer_read_from_file ; 
 int /*<<< orphan*/  __wrap_buffer_write_file ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,...) ; 
 int /*<<< orphan*/  pem ; 
 int test_client_key ; 
 int /*<<< orphan*/  test_server_key ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(void **state) {
    const char *filename = "testfilename.key";

    /* Test writing the client key */
    FUNC0(__wrap_buffer_write_file, filename, filename);
    FUNC0(__wrap_buffer_write_file, pem, test_client_key);
    FUNC2(__wrap_buffer_write_file, true);

    /* Key generation re-reads the created file as a sanity check */
    FUNC0(__wrap_buffer_read_from_file, filename, filename);
    FUNC2(__wrap_buffer_read_from_file, test_client_key);

    FUNC1(filename, NULL, INLINE_FILE_TAG,
                                       test_server_key);
}