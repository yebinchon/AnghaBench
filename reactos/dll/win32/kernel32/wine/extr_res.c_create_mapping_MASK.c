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
struct mapping_info {scalar_t__ file; int /*<<< orphan*/  size; scalar_t__ read_write; } ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int GENERIC_READ ; 
 int GENERIC_WRITE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 struct mapping_info* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  FUNC4 (struct mapping_info*) ; 
 scalar_t__ FUNC5 (struct mapping_info*) ; 

__attribute__((used)) static struct mapping_info *FUNC6( LPCWSTR name, BOOL rw )
{
    struct mapping_info *mi;

    mi = FUNC3( FUNC2(), HEAP_ZERO_MEMORY, sizeof *mi );
    if (!mi)
        return NULL;

    mi->read_write = rw;

    mi->file = FUNC0( name, GENERIC_READ | (rw ? GENERIC_WRITE : 0),
                            0, NULL, OPEN_EXISTING, 0, 0 );

    if (mi->file != INVALID_HANDLE_VALUE)
    {
        mi->size = FUNC1( mi->file, NULL );

        if (FUNC5( mi ))
            return mi;
    }
    FUNC4( mi );
    return NULL;
}