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
struct mapping_info {scalar_t__ file; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mapping_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct mapping_info*) ; 

__attribute__((used)) static void FUNC4( struct mapping_info *mi )
{
    if (!mi)
        return;
    FUNC3( mi );
    if (mi->file)
        FUNC0( mi->file );
    FUNC2( FUNC1(), 0, mi );
}