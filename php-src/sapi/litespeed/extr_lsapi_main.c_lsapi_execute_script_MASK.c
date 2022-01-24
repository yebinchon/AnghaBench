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
typedef  int /*<<< orphan*/  zend_file_handle ;
struct TYPE_2__ {scalar_t__ path_translated; } ;

/* Variables and functions */
 TYPE_1__ FUNC0 (int /*<<< orphan*/ ) ; 
 char* argv0 ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  request_info ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static int FUNC5( zend_file_handle * file_handle)
{
    char *p;
    int len;
	FUNC4(file_handle, FUNC0(request_info).path_translated);

    p = argv0;
    *p++ = ':';
    len = FUNC3( FUNC0(request_info).path_translated );
    if ( len > 45 )
        len = len - 45;
    else
        len = 0;
    FUNC1( p, FUNC0(request_info).path_translated + len, 0, 46 );

    FUNC2(file_handle);
    return 0;

}