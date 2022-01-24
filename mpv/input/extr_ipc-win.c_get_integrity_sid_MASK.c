#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  Sid; } ;
struct TYPE_7__ {TYPE_1__ Label; } ;
typedef  TYPE_2__ TOKEN_MANDATORY_LABEL ;
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char**) ; 
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  TOKEN_QUERY ; 
 int /*<<< orphan*/  TokenIntegrityLevel ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *FUNC8(void)
{
    char *ssid = NULL;
    TOKEN_MANDATORY_LABEL *info = NULL;
    HANDLE t;
    if (!FUNC5(FUNC2(), TOKEN_QUERY, &t))
        goto done;

    DWORD info_len;
    if (!FUNC4(t, TokenIntegrityLevel, NULL, 0, &info_len) &&
        FUNC3() != ERROR_INSUFFICIENT_BUFFER)
        goto done;

    info = FUNC7(NULL, info_len);
    if (!FUNC4(t, TokenIntegrityLevel, info, info_len, &info_len))
        goto done;
    if (!info->Label.Sid)
        goto done;

    FUNC1(info->Label.Sid, &ssid);
done:
    if (t)
        FUNC0(t);
    FUNC6(info);
    return ssid;
}