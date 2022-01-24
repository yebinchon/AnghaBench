#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ULONG ;
struct TYPE_5__ {int /*<<< orphan*/  property_set_storage; int /*<<< orphan*/  currentFile; int /*<<< orphan*/  url; int /*<<< orphan*/  refCount; } ;
typedef  TYPE_1__ InternetShortcut ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static ULONG FUNC6(InternetShortcut *This)
{
    ULONG count;
    FUNC3("(%p)\n", This);
    count = FUNC2(&This->refCount);
    if (count == 0)
    {
        FUNC0(This->url);
        FUNC0(This->currentFile);
        FUNC1(This->property_set_storage);
        FUNC4(This);
        FUNC5();
    }
    return count;
}