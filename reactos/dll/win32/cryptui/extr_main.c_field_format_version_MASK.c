#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
struct TYPE_5__ {TYPE_1__* pCertInfo; } ;
struct TYPE_4__ {char* dwVersion; } ;
typedef  TYPE_2__* PCCERT_CONTEXT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,char*) ; 

__attribute__((used)) static WCHAR *FUNC3(PCCERT_CONTEXT cert)
{
    static const WCHAR fmt[] = { 'V','%','d',0 };
    WCHAR *buf = FUNC1(FUNC0(), 0, 12 * sizeof(WCHAR));

    if (buf)
        FUNC2(buf, fmt, cert->pCertInfo->dwVersion);
    return buf;
}