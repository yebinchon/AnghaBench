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
 size_t SIZE_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 char* FUNC1 (char const*) ; 
 size_t FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 char* FUNC4 (char const*,char const*) ; 

char *
FUNC5(const char *tosearch, const char *searchfor, const char *replacewith)
{
    if (!tosearch || !searchfor || !replacewith)
    {
        return NULL;
    }

    size_t tosearchlen = FUNC2(tosearch);
    size_t replacewithlen = FUNC2(replacewith);
    size_t templen = tosearchlen * replacewithlen;

    if (tosearchlen == 0 || FUNC2(searchfor) == 0 || replacewithlen == 0)
    {
        return NULL;
    }

    bool is_potential_integer_overflow =  (templen == SIZE_MAX) || (templen / tosearchlen != replacewithlen);

    if (is_potential_integer_overflow)
    {
        return NULL;
    }

    /* state: all parameters are valid */

    const char *searching = tosearch;
    char *scratch;

    char temp[templen+1];
    temp[0] = 0;

    scratch = FUNC4(searching,searchfor);
    if (!scratch)
    {
        return FUNC1(tosearch);
    }

    while (scratch)
    {
        FUNC3(temp,searching,scratch-searching);
        FUNC0(temp,replacewith);

        searching = scratch+FUNC2(searchfor);
        scratch = FUNC4(searching,searchfor);
    }
    return FUNC1(temp);
}