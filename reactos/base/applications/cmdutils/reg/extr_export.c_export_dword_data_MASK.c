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
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(WCHAR **buf, DWORD *data)
{
    static const WCHAR fmt[] = {'d','w','o','r','d',':','%','0','8','x',0};

    *buf = FUNC0(15 * sizeof(WCHAR));
    FUNC1(*buf, fmt, *data);
}