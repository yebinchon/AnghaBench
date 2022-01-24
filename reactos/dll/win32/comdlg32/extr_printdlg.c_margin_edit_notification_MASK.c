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
typedef  int WORD ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int LONG ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
#define  EN_CHANGE 129 
#define  EN_KILLFOCUS 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int) ; 

__attribute__((used)) static void FUNC9(HWND hDlg, const pagesetup_data *data, WORD msg, WORD id)
{
    switch (msg)
    {
    case EN_CHANGE:
      {
        WCHAR buf[10];
        LONG val = 0;
        LONG *value = FUNC2(FUNC6(data), id);

        if (FUNC1(hDlg, id, buf, FUNC0(buf)) != 0)
        {
            WCHAR *end;
            WCHAR decimal = FUNC3();

            val = FUNC8(buf, &end, 10);
            if(end != buf || *end == decimal)
            {
                int mult = FUNC4(data) ? 100 : 1000;
                val *= mult;
                if(*end == decimal)
                {
                    while(mult > 1)
                    {
                        end++;
                        mult /= 10;
                        if(FUNC5(*end))
                            val += (*end - '0') * mult;
                        else
                            break;
                    }
                }
            }
        }
        *value = val;
        return;
      }

    case EN_KILLFOCUS:
        FUNC7(hDlg, data, id);
        return;
    }
}