#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  pbFormat; } ;
struct TYPE_9__ {scalar_t__ pGraph; } ;
struct TYPE_10__ {TYPE_2__ filterInfo; } ;
struct TYPE_11__ {scalar_t__ seekthru_unk; int /*<<< orphan*/  bufferData; TYPE_1__ mtype; scalar_t__ grabberIface; scalar_t__ memOutput; scalar_t__ allocator; TYPE_3__ filter; } ;
typedef  TYPE_4__ SG_Impl ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,TYPE_4__*,scalar_t__) ; 

__attribute__((used)) static void FUNC7(SG_Impl *This)
{
    FUNC5("(%p)\n", This);
    if (This->filter.filterInfo.pGraph)
        FUNC6("(%p) still joined to filter graph %p\n", This, This->filter.filterInfo.pGraph);
    if (This->allocator)
        FUNC1(This->allocator);
    if (This->memOutput)
        FUNC2(This->memOutput);
    if (This->grabberIface)
        FUNC3(This->grabberIface);
    FUNC0(This->mtype.pbFormat);
    FUNC0(This->bufferData);
    if(This->seekthru_unk)
        FUNC4(This->seekthru_unk);
}