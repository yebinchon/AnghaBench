#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  height; int /*<<< orphan*/  dc; int /*<<< orphan*/  handle; } ;
struct TYPE_5__ {int /*<<< orphan*/  tmHeight; } ;
typedef  TYPE_1__ TEXTMETRICW ;
typedef  TYPE_2__ GdiFont ;

/* Variables and functions */
 int /*<<< orphan*/  CLEARTYPE_QUALITY ; 
 int /*<<< orphan*/  CLIP_DEFAULT_PRECIS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char const*) ; 
 int /*<<< orphan*/  DEFAULT_CHARSET ; 
 int DEFAULT_PITCH ; 
 int /*<<< orphan*/  FALSE ; 
 int FF_DONTCARE ; 
 int /*<<< orphan*/  FW_NORMAL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  OUT_DEFAULT_PRECIS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,int) ; 

GdiFont*
FUNC5(const char *name, int size)
{
    TEXTMETRICW metric;
    GdiFont *font = (GdiFont*)FUNC4(1, sizeof(GdiFont));
    if (!font)
        return NULL;
    font->dc = FUNC0(0);
    font->handle = FUNC1(size, 0, 0, 0, FW_NORMAL, FALSE, FALSE, FALSE, DEFAULT_CHARSET, OUT_DEFAULT_PRECIS, CLIP_DEFAULT_PRECIS, CLEARTYPE_QUALITY, DEFAULT_PITCH | FF_DONTCARE, name);
    FUNC3(font->dc, font->handle);
    FUNC2(font->dc, &metric);
    font->height = metric.tmHeight;
    return font;
}