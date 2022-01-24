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
typedef  int /*<<< orphan*/  HPDF_BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,scalar_t__) ; 
 int /*<<< orphan*/ * HPDF_PADDING_STRING ; 
 scalar_t__ HPDF_PASSWD_LEN ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char const*,scalar_t__) ; 

void
FUNC4  (const char  *pwd,
                           HPDF_BYTE        *new_pwd)
{
    HPDF_UINT len = FUNC3 (pwd, HPDF_PASSWD_LEN + 1);

    FUNC2((" HPDF_PadOrTrancatePasswd\n"));

    FUNC1 (new_pwd, 0x00, HPDF_PASSWD_LEN);

    if (len >= HPDF_PASSWD_LEN) {
        FUNC0 (new_pwd, (HPDF_BYTE *)pwd, HPDF_PASSWD_LEN);
    } else {
        if (len > 0) {
            FUNC0 (new_pwd, (HPDF_BYTE *)pwd, len);
        }
        FUNC0 (new_pwd + len, HPDF_PADDING_STRING, HPDF_PASSWD_LEN - len);
    }
}