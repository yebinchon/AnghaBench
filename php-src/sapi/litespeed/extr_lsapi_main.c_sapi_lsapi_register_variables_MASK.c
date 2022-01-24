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
typedef  int /*<<< orphan*/  zval ;
struct TYPE_2__ {char* request_uri; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  (*) (char*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *),int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  (*) (char*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *),int /*<<< orphan*/ *) ; 
 TYPE_1__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ lsapi_mode ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  request_info ; 
 char* script_filename ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(zval *track_vars_array)
{
    char * php_self = "";
    if ( lsapi_mode ) {
        if ( (FUNC2(request_info).request_uri ) )
            php_self = (FUNC2(request_info).request_uri );

        FUNC4(track_vars_array);

        FUNC1( add_variable, track_vars_array );
        FUNC0( add_variable, track_vars_array );
        FUNC3("PHP_SELF", 8, php_self, FUNC7( php_self ), track_vars_array );
    } else {
        FUNC5(track_vars_array);

        FUNC6("PHP_SELF", php_self, track_vars_array);
        FUNC6("SCRIPT_NAME", php_self, track_vars_array);
        FUNC6("SCRIPT_FILENAME", script_filename, track_vars_array);
        FUNC6("PATH_TRANSLATED", script_filename, track_vars_array);
        FUNC6("DOCUMENT_ROOT", "", track_vars_array);

    }
}