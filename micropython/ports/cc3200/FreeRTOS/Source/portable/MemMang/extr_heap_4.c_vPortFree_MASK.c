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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_3__ {int xBlockSize; int /*<<< orphan*/ * pxNextFreeBlock; } ;
typedef  TYPE_1__ BlockLink_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (void*,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int xBlockAllocatedBit ; 
 int xFreeBytesRemaining ; 
 int /*<<< orphan*/  xHeapStructSize ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6( void *pv )
{
uint8_t *puc = ( uint8_t * ) pv;
BlockLink_t *pxLink;

	if( pv != NULL )
	{
		/* The memory being freed will have an BlockLink_t structure immediately
		before it. */
		puc -= xHeapStructSize;

		/* This casting is to keep the compiler from issuing warnings. */
		pxLink = ( void * ) puc;

		/* Check the block is actually allocated. */
		FUNC0( ( pxLink->xBlockSize & xBlockAllocatedBit ) != 0 );
		FUNC0( pxLink->pxNextFreeBlock == NULL );

		if( ( pxLink->xBlockSize & xBlockAllocatedBit ) != 0 )
		{
			if( pxLink->pxNextFreeBlock == NULL )
			{
				/* The block is being returned to the heap - it is no longer
				allocated. */
				pxLink->xBlockSize &= ~xBlockAllocatedBit;

				FUNC4();
				{
					/* Add this block to the list of free blocks. */
					xFreeBytesRemaining += pxLink->xBlockSize;
					FUNC3( pv, pxLink->xBlockSize );
					FUNC2( ( ( BlockLink_t * ) pxLink ) );
				}
				( void ) FUNC5();
			}
			else
			{
				FUNC1();
			}
		}
		else
		{
			FUNC1();
		}
	}
}