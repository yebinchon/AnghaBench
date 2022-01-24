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
struct RtfData {scalar_t__ in_text; } ;
typedef  int BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (struct RtfData*,char const*,int) ; 
 scalar_t__ TRUE ; 
 unsigned int FUNC1 (char*,char*,int const) ; 

__attribute__((used)) static BOOL FUNC2(struct RtfData* rd, const char* str)
{
    const char* p;
    const char* last;
    const char* replace;
    unsigned    rlen;

    if (!rd->in_text)
    {
        if (!FUNC0(rd, " ", 1)) return FALSE;
        rd->in_text = TRUE;
    }
    for (last = p = str; *p; p++)
    {
        if (*p & 0x80) /* escape non-ASCII chars */
        {
            static char         xx[8];
            rlen = FUNC1(xx, "\\'%x", *(const BYTE*)p);
            replace = xx;
        }
        else switch (*p)
        {
        case '{':  rlen = 2; replace = "\\{";  break;
        case '}':  rlen = 2; replace = "\\}";  break;
        case '\\': rlen = 2; replace = "\\\\"; break;
        default:   continue;
        }
        if ((p != last && !FUNC0(rd, last, p - last)) ||
            !FUNC0(rd, replace, rlen)) return FALSE;
        last = p + 1;
    }
    return FUNC0(rd, last, p - last);
}