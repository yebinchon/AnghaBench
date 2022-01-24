#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  curFontCollection; } ;
struct TYPE_4__ {int /*<<< orphan*/  handle; } ;
typedef  int /*<<< orphan*/  REAL ;
typedef  int INT ;
typedef  int /*<<< orphan*/  GpFontFamily ;
typedef  TYPE_1__ GdipFont ;

/* Variables and functions */
 int /*<<< orphan*/  FontStyleRegular ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  UnitPixel ; 
 scalar_t__ FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 
 TYPE_3__ gdip ; 
 int /*<<< orphan*/  FUNC5 () ; 

GdipFont*
FUNC6(int size){
    GpFontFamily **families;
    INT count;
    GdipFont *font = (GdipFont*)FUNC3(1, sizeof(GdipFont));
    if( FUNC1(FUNC5(), &count) ) return NULL;
    families = (GpFontFamily**)FUNC3(1, sizeof(GpFontFamily*));
    if( !families ) return NULL;
    if( FUNC2(FUNC5(), count, families, &count) ) return NULL;
    if( count < 1 ) return NULL;
    if( FUNC0(families[count-1], (REAL)size, FontStyleRegular, UnitPixel, &font->handle) ) return NULL;
    FUNC4(families);
    gdip.curFontCollection++;
    return font;
}