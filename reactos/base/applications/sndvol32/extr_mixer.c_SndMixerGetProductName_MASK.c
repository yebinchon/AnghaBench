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
typedef  int UINT ;
struct TYPE_4__ {int /*<<< orphan*/  szPname; } ;
struct TYPE_5__ {TYPE_1__ Caps; scalar_t__ hmx; } ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  TYPE_2__* PSND_MIXER ;
typedef  int /*<<< orphan*/ * LPTSTR ;
typedef  int INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

INT
FUNC3(PSND_MIXER Mixer,
                       LPTSTR lpBuffer,
                       UINT uSize)
{
    if (Mixer->hmx)
    {
        UINT lnsz = (UINT) FUNC1(Mixer->Caps.szPname);
        if(lnsz + 1 > uSize)
        {
            return lnsz + 1;
        }
        else
        {
            FUNC2(lpBuffer, Mixer->Caps.szPname, lnsz * sizeof(TCHAR));
            lpBuffer[lnsz] = FUNC0('\0');
            return lnsz;
        }
    }

    return -1;
}