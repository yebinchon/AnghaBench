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
struct sockaddr {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct sockaddr*,int) ; 
 int FUNC1 (char const*,struct sockaddr*) ; 

int FUNC2( const char * pBind, int backlog )
{
    char serverAddr[128];
    int ret;
    int fd = -1;
    ret = FUNC1( pBind, (struct sockaddr *)serverAddr );
    if ( !ret )
    {
        fd = FUNC0( (struct sockaddr *)serverAddr, backlog );
    }
    return fd;
}