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
typedef  char WCHAR ;
typedef  char* LPWSTR ;
typedef  int /*<<< orphan*/  LPCWSTR ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 char* FUNC1 (char*,char) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static LPWSTR FUNC3(LPWSTR buf, LPCWSTR spec)
{
    WCHAR *endpos, *ext;

    FUNC2(buf, spec);
    if( (endpos = FUNC1(buf, ';')) )
        *endpos = '\0';

    ext = FUNC0(buf);
    if(FUNC1(ext, '*'))
        return NULL;

    return ext;
}