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
struct OIDToString {int /*<<< orphan*/  oid; } ;
typedef  int /*<<< orphan*/  LPCSTR ;

/* Variables and functions */
 int FUNC0 (struct OIDToString*) ; 
 struct OIDToString* oidMap ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct OIDToString *FUNC2(LPCSTR oid)
{
    int indexHigh = FUNC0(oidMap) - 1, indexLow = 0;

    while (indexLow <= indexHigh)
    {
        int cmp, i = (indexLow + indexHigh) / 2;
        if (!(cmp = FUNC1(oid, oidMap[i].oid)))
            return &oidMap[i];
        if (cmp > 0)
            indexLow = i + 1;
        else
            indexHigh = i - 1;
    }
    return NULL;
}