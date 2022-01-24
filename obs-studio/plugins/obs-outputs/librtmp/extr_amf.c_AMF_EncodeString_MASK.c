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
 int /*<<< orphan*/  AMF_LONG_STRING ; 
 int /*<<< orphan*/  AMF_STRING ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 

char *
FUNC3(char *output, char *outend, const AVal *bv)
{
    if ((bv->av_len < 65536 && output + 1 + 2 + bv->av_len > outend) ||
            output + 1 + 4 + bv->av_len > outend)
        return NULL;

    if (bv->av_len < 65536)
    {
        *output++ = AMF_STRING;

        output = FUNC0(output, outend, bv->av_len);
    }
    else
    {
        *output++ = AMF_LONG_STRING;

        output = FUNC1(output, outend, bv->av_len);
    }
    FUNC2(output, bv->av_val, bv->av_len);
    output += bv->av_len;

    return output;
}