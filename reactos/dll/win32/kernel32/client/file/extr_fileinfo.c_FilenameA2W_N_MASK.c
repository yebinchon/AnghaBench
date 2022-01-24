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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__* LPWSTR ;
typedef  int /*<<< orphan*/  LPSTR ;
typedef  scalar_t__ LPCSTR ;
typedef  int INT ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int,int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int,int*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ bIsFileApiAnsi ; 
 int FUNC2 (scalar_t__) ; 

DWORD
FUNC3(
   LPWSTR dest,
   INT destlen, /* buffer size in TCHARS incl. nullchar */
   LPCSTR src,
   INT srclen /* buffer size in TCHARS incl. nullchar */
   )
{
    DWORD ret;

    if (srclen < 0) srclen = FUNC2( src ) + 1;

    if (bIsFileApiAnsi)
        FUNC0( dest, destlen* sizeof(WCHAR), &ret, (LPSTR)src, srclen  );
    else
        FUNC1( dest, destlen* sizeof(WCHAR), &ret, (LPSTR)src, srclen );

    if (ret) dest[(ret/sizeof(WCHAR))-1]=0;

    return ret/sizeof(WCHAR);
}