#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_2__ {size_t curFontCollection; int /*<<< orphan*/ * fontCollection; } ;
typedef  int /*<<< orphan*/  GdipFont ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 TYPE_1__ gdip ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 

GdipFont*
FUNC4(const WCHAR* filename, int size)
{
    if( !FUNC2() )
        if( FUNC0(&gdip.fontCollection[gdip.curFontCollection]) ) return NULL;
    if( FUNC1(FUNC2(), filename) ) return NULL;    
    return FUNC3(size);
}