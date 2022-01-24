#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* path_translated; } ;

/* Variables and functions */
 char DEFAULT_SLASH ; 
 int FAILURE ; 
 int /*<<< orphan*/  FUNC0 (char) ; 
 TYPE_1__ FUNC1 (int /*<<< orphan*/ ) ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (size_t) ; 
 char* FUNC4 (char*,size_t) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,size_t) ; 
 scalar_t__ parse_user_ini ; 
 int /*<<< orphan*/  FUNC7 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (char*,size_t) ; 
 scalar_t__ FUNC9 () ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  request_info ; 
 char* FUNC11 (char*,int /*<<< orphan*/ ) ; 
 size_t FUNC12 (char*) ; 
 size_t FUNC13 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC14 (char*,size_t) ; 

__attribute__((used)) static int FUNC15()
{
    char *path, *server_name;
    size_t path_len, server_name_len;

    /* PATH_TRANSLATED should be defined at this stage but better safe than sorry :) */
    if (!FUNC1(request_info).path_translated) {
            return FAILURE;
    }

    if (FUNC10()) {
        server_name = FUNC11("SERVER_NAME", 0);
        /* SERVER_NAME should also be defined at this stage..but better check it anyway */
        if (server_name) {
                server_name_len = FUNC12(server_name);
                server_name = FUNC4(server_name, server_name_len);
                FUNC14(server_name, server_name_len);
                FUNC8(server_name, server_name_len);
                FUNC2(server_name);
        }
    }

    if (FUNC9()) {
        /* Prepare search path */
        path_len = FUNC12(FUNC1(request_info).path_translated);

        /* Make sure we have trailing slash! */
        if (!FUNC0(FUNC1(request_info).path_translated[path_len])) {
            path = FUNC3(path_len + 2);
            FUNC6(path, FUNC1(request_info).path_translated, path_len + 1);
            path_len = FUNC13(path, path_len);
            path[path_len++] = DEFAULT_SLASH;
        } else {
            path = FUNC4(FUNC1(request_info).path_translated, path_len);
            path_len = FUNC13(path, path_len);
        }
        path[path_len] = 0;

        /* Activate per-dir-system-configuration defined in php.ini and stored into configuration_hash during startup */
        FUNC7(path, path_len); /* Note: for global settings sake we check from root to path */

        FUNC2(path);
    }

    if (parse_user_ini && FUNC5() == FAILURE) {
        return FAILURE;
    }
    return SUCCESS;
}