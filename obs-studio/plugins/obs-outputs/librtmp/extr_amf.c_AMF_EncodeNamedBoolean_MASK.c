#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int av_len; int /*<<< orphan*/  av_val; } ;
typedef  TYPE_1__ AVal ;

/* Variables and functions */
 char* FUNC0 (char*,char*,int) ; 
 char* FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 

char *
FUNC3(char *output, char *outend, const AVal *strName, int bVal)
{
    if (output+2+strName->av_len > outend)
        return NULL;
    output = FUNC1(output, outend, strName->av_len);

    FUNC2(output, strName->av_val, strName->av_len);
    output += strName->av_len;

    return FUNC0(output, outend, bVal);
}