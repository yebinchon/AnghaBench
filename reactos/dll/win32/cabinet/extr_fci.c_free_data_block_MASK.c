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
struct data_block {int /*<<< orphan*/  entry; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* free ) (struct data_block*) ;} ;
typedef  TYPE_1__ FCI_Int ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct data_block*) ; 

__attribute__((used)) static void FUNC2( FCI_Int *fci, struct data_block *block )
{
    FUNC0( &block->entry );
    fci->free( block );
}