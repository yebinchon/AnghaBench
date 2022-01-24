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
 int /*<<< orphan*/  CRYPTO_FIRST ; 
 int /*<<< orphan*/  DSO_REFTEST ; 
 int /*<<< orphan*/  JUST_CRYPTO ; 
 int /*<<< orphan*/  NO_ATEXIT ; 
 int /*<<< orphan*/  SSL_FIRST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 char* path_atexit ; 
 char* path_crypto ; 
 char* path_ssl ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  test_type ; 

int FUNC3(int argc, char *argv[])
{
    const char *p;

    if (argc != 5) {
        FUNC0(stderr, "Incorrect number of arguments\n");
        return 1;
    }

    p = argv[1];

    if (FUNC1(p, "-crypto_first") == 0) {
        test_type = CRYPTO_FIRST;
    } else if (FUNC1(p, "-ssl_first") == 0) {
        test_type = SSL_FIRST;
    } else if (FUNC1(p, "-just_crypto") == 0) {
        test_type = JUST_CRYPTO;
    } else if (FUNC1(p, "-dso_ref") == 0) {
        test_type = DSO_REFTEST;
    } else if (FUNC1(p, "-no_atexit") == 0) {
        test_type = NO_ATEXIT;
    } else {
        FUNC0(stderr, "Unrecognised argument\n");
        return 1;
    }
    path_crypto = argv[2];
    path_ssl = argv[3];
    path_atexit = argv[4];
    if (path_crypto == NULL || path_ssl == NULL) {
        FUNC0(stderr, "Invalid libcrypto/libssl path\n");
        return 1;
    }

#if defined(DSO_DLFCN) || defined(DSO_WIN32)
    if (!test_lib())
        return 1;
#endif
    return 0;
}