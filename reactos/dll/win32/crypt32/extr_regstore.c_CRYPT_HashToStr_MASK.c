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
typedef  int /*<<< orphan*/  const* LPWSTR ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,char const*,int /*<<< orphan*/  const) ; 

__attribute__((used)) static void FUNC2(const BYTE *hash, LPWSTR asciiHash)
{
    static const WCHAR fmt[] = { '%','0','2','X',0 };
    DWORD i;

    FUNC0(hash);
    FUNC0(asciiHash);

    for (i = 0; i < 20; i++)
        FUNC1(asciiHash + i * 2, fmt, hash[i]);
}