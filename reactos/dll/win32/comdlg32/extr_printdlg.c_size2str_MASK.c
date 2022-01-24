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
typedef  int /*<<< orphan*/  pagesetup_data ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int,...) ; 

__attribute__((used)) static void FUNC3(const pagesetup_data *data, DWORD size, LPWSTR strout)
{
    static const WCHAR integer_fmt[] = {'%','d',0};
    static const WCHAR hundredths_fmt[] = {'%','d','%','c','%','0','2','d',0};
    static const WCHAR thousandths_fmt[] = {'%','d','%','c','%','0','3','d',0};

    /* FIXME use LOCALE_SDECIMAL when the edit parsing code can cope */

    if (FUNC1(data))
    {
        if(size % 100)
            FUNC2(strout, hundredths_fmt, size / 100, FUNC0(), size % 100);
        else
            FUNC2(strout, integer_fmt, size / 100);
    }
    else
    {
        if(size % 1000)
            FUNC2(strout, thousandths_fmt, size / 1000, FUNC0(), size % 1000);
        else
            FUNC2(strout, integer_fmt, size / 1000);

    }
}