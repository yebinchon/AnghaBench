#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * o_props; scalar_t__ o_num; } ;
typedef  int /*<<< orphan*/  AMFObjectProperty ;
typedef  TYPE_1__ AMFObject ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char const*) ; 
 scalar_t__ AMF_OBJECT_END ; 
 int FALSE ; 
 int /*<<< orphan*/  RTMP_LOGERROR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int TRUE ; 

int
FUNC4(AMFObject *obj, const char *pBuffer, int nSize, int bDecodeName)
{
    int nOriginalSize = nSize;
    int bError = FALSE;		/* if there is an error while decoding - try to at least find the end mark AMF_OBJECT_END */

    obj->o_num = 0;
    obj->o_props = NULL;
    while (nSize > 0)
    {
        AMFObjectProperty prop;
        int nRes;

        if (nSize >=3 && FUNC2(pBuffer) == AMF_OBJECT_END)
        {
            nSize -= 3;
            bError = FALSE;
            break;
        }

        if (bError)
        {
            FUNC3(RTMP_LOGERROR,
                     "DECODING ERROR, IGNORING BYTES UNTIL NEXT KNOWN PATTERN!");
            nSize--;
            pBuffer++;
            continue;
        }

        nRes = FUNC0(&prop, pBuffer, nSize, bDecodeName);
        if (nRes == -1)
        {
            bError = TRUE;
            break;
        }
        else
        {
            nSize -= nRes;
            if (nSize < 0)
            {
                bError = TRUE;
                break;
            }
            pBuffer += nRes;
            FUNC1(obj, &prop);
        }
    }

    if (bError)
        return -1;

    return nOriginalSize - nSize;
}