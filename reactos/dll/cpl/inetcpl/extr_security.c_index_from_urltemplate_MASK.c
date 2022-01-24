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
typedef  scalar_t__ URLTEMPLATE ;
typedef  int DWORD ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,int) ; 
 scalar_t__* url_templates ; 

__attribute__((used)) static DWORD FUNC3(URLTEMPLATE value)
{

    DWORD index = FUNC0(url_templates);

    while((index > 0) && (url_templates[index-1] != value))
        index--;

    index--; /* table entries are 0 based */
    if (!index && value)
        FUNC1("URLTEMPLATE 0x%x not supported\n", value);

    FUNC2("URLTEMPLATE 0x%08x=> Level %d\n", value, index);
    return index;
}