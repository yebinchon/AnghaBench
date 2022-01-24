#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_3__ {int /*<<< orphan*/  hwnd; } ;
typedef  int INT ;
typedef  TYPE_1__ BUTTON_INFO ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 

__attribute__((used)) static inline WCHAR *FUNC3( const BUTTON_INFO *infoPtr )
{
    INT len = FUNC0( infoPtr->hwnd );
    WCHAR *buffer = FUNC2( (len + 1) * sizeof(WCHAR) );
    if (buffer)
        FUNC1( infoPtr->hwnd, buffer, len + 1 );
    return buffer;
}