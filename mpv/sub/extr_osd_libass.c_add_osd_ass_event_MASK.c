#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int Duration; int ReadOrder; int /*<<< orphan*/ * Text; int /*<<< orphan*/  Style; scalar_t__ Start; } ;
struct TYPE_7__ {TYPE_2__* events; } ;
typedef  TYPE_1__ ASS_Track ;
typedef  TYPE_2__ ASS_Event ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (char const*) ; 

__attribute__((used)) static ASS_Event *FUNC4(ASS_Track *track, const char *style,
                                    const char *text)
{
    int n = FUNC0(track);
    ASS_Event *event = track->events + n;
    event->Start = 0;
    event->Duration = 100;
    event->Style = FUNC2(track, style, 0);
    event->ReadOrder = n;
    FUNC1(event->Text == NULL);
    if (text)
        event->Text = FUNC3(text);
    return event;
}