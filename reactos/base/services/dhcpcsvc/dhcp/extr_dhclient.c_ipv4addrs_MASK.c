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
struct in_addr {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,struct in_addr*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 char* FUNC2 (char*,char*) ; 

int
FUNC3(char * buf)
{
    char *tmp;
    struct in_addr jnk;
    int i = 0;

    FUNC1("Input: %s", buf);

    do {
        tmp = FUNC2(buf, " ");
        FUNC1("got %s", tmp);
		if( tmp && FUNC0(tmp, &jnk) ) i++;
        buf = NULL;
    } while( tmp );

    return (i);
}