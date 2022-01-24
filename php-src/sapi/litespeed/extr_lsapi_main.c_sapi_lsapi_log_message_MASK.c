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
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char*) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(char *message, int syslog_type_int)
{
    char buf[8192];
    int len = FUNC2( message );
    if ( *(message + len - 1 ) != '\n' )
    {
        FUNC1( buf, 8191, "%s\n", message );
        message = buf;
        if (len > 8191)
            len = 8191;
        ++len;
    }
    FUNC0( message, len);
}