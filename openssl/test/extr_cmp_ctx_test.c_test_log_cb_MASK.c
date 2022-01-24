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
typedef  int OSSL_CMP_severity ;

/* Variables and functions */
 char* OPENSSL_FILE ; 
 int OSSL_CMP_LOG_INFO ; 
 scalar_t__ FUNC0 (char const*,char*) ; 
 int test_log_cb_res ; 
 int test_log_line ; 

__attribute__((used)) static int FUNC1(const char *func, const char *file, int line,
                       OSSL_CMP_severity level, const char *msg)
{
    test_log_cb_res =
# ifndef PEDANTIC
        (FUNC0(func, "execute_cmp_ctx_log_cb_test") == 0
         || FUNC0(func, "(unknown function)") == 0) &&
# endif
        (FUNC0(file, OPENSSL_FILE) == 0 || FUNC0(file, "(no file)") == 0)
        && (line == test_log_line || line == 0)
        && (level == OSSL_CMP_LOG_INFO || level == -1)
        && FUNC0(msg, "ok\n") == 0;
    return 1;
}