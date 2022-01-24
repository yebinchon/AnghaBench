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
typedef  int jsonsl_uchar_t ;
typedef  TYPE_1__* jsonsl_t ;
struct TYPE_3__ {int pos; } ;

/* Variables and functions */
 int FASTPARSE_BREAK ; 
 int FASTPARSE_EXHAUSTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STRINGY_INSIGNIFICANT ; 
 int /*<<< orphan*/  TOTAL ; 
 scalar_t__ FUNC1 (int const) ; 

__attribute__((used)) static int
FUNC2(jsonsl_t jsn,
                      const jsonsl_uchar_t **bytes_p, size_t *nbytes_p)
{
    const jsonsl_uchar_t *bytes = *bytes_p;
    const jsonsl_uchar_t *end;
    for (end = bytes + *nbytes_p; bytes != end; bytes++) {
        if (
#ifdef JSONSL_USE_WCHAR
                *bytes >= 0x100 ||
#endif /* JSONSL_USE_WCHAR */
                (FUNC1(*bytes))) {
            FUNC0(TOTAL);
            FUNC0(STRINGY_INSIGNIFICANT);
        } else {
            /* Once we're done here, re-calculate the position variables */
            jsn->pos += (bytes - *bytes_p);
            *nbytes_p -= (bytes - *bytes_p);
            *bytes_p = bytes;
            return FASTPARSE_BREAK;
        }
    }

    /* Once we're done here, re-calculate the position variables */
    jsn->pos += (bytes - *bytes_p);
    return FASTPARSE_EXHAUSTED;
}