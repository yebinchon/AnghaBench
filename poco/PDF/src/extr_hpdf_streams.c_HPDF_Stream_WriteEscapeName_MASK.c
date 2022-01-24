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
typedef  scalar_t__ HPDF_UINT ;
typedef  int /*<<< orphan*/  HPDF_Stream ;
typedef  int /*<<< orphan*/  HPDF_STATUS ;
typedef  scalar_t__ HPDF_INT32 ;
typedef  scalar_t__ HPDF_INT ;
typedef  int HPDF_BYTE ;

/* Variables and functions */
 int HPDF_LIMIT_MAX_NAME_LEN ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*,scalar_t__) ; 

HPDF_STATUS
FUNC4  (HPDF_Stream      stream,
                              const char  *value)
{
    char tmp_char[HPDF_LIMIT_MAX_NAME_LEN * 3 + 2];
    HPDF_UINT len;
    HPDF_INT i;
    const HPDF_BYTE* pos1;
    char* pos2;

    FUNC1((" HPDF_Stream_WriteEscapeName\n"));

    len = FUNC2 (value, HPDF_LIMIT_MAX_NAME_LEN);
    pos1 = (HPDF_BYTE*)value;
    pos2 = tmp_char;

    *pos2++ = '/';
    for (i = 0; i < (HPDF_INT32)len; i++) {
        HPDF_BYTE c = *pos1++;
        if (FUNC0(c)) {
            *pos2++ = '#';
            *pos2 = (char)(c >> 4);
            if (*pos2 <= 9)
                *pos2 += 0x30;
            else
                *pos2 += 0x41 - 10;
            pos2++;

            *pos2 = (char)(c & 0x0f);
            if (*pos2 <= 9)
                *pos2 += 0x30;
            else
                *pos2 += 0x41 - 10;
            pos2++;
        } else
            *pos2++ = c;
    }
    *pos2 = 0;

    return FUNC3 (stream, (HPDF_BYTE *)tmp_char, FUNC2(tmp_char, -1));
}