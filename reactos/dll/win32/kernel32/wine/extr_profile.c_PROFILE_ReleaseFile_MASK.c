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
struct TYPE_2__ {int /*<<< orphan*/  LastWriteTime; int /*<<< orphan*/  encoding; int /*<<< orphan*/ * filename; int /*<<< orphan*/ * section; int /*<<< orphan*/  changed; } ;

/* Variables and functions */
 TYPE_1__* CurProfile ; 
 int /*<<< orphan*/  ENCODING_ANSI ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC5(void)
{
    FUNC2();
    FUNC3( CurProfile->section );
    FUNC1( FUNC0(), 0, CurProfile->filename );
    CurProfile->changed = FALSE;
    CurProfile->section = NULL;
    CurProfile->filename  = NULL;
    CurProfile->encoding = ENCODING_ANSI;
    FUNC4(&CurProfile->LastWriteTime, sizeof(CurProfile->LastWriteTime));
}