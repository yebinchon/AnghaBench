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
 char FUNC0 (char const) ; 

__attribute__((used)) static int FUNC1(const char* str ,char *retstr)
{
	char* 	anchor 	= NULL;
	const char* 	anchor1 = NULL;
	int 	result 	= 0;

    if( (!str) || str[0] == '\0'){
        return result;
    } else {
	anchor = retstr;
	anchor1 = str;
        while( (*str)!='\0' ){
		if( *str == '-' ){
			*retstr =  '_';
		} else {
			*retstr = FUNC0(*str);
		}
            str++;
            retstr++;
	}
	*retstr = '\0';
	retstr=  anchor;
	str=  anchor1;
	result = 1;
    }

    return(result);
}