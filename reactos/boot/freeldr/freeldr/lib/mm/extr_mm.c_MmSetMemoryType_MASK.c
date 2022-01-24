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
typedef  int /*<<< orphan*/  VOID ;
typedef  int /*<<< orphan*/  TYPE_OF_MEMORY ;
typedef  int /*<<< orphan*/  SIZE_T ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  int PFN_NUMBER ;

/* Variables and functions */
 int MM_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PageLookupTableAddress ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 

VOID FUNC3(PVOID MemoryAddress, SIZE_T MemorySize, TYPE_OF_MEMORY NewType)
{
    PFN_NUMBER        PagesNeeded;
    PFN_NUMBER        StartPageNumber;

    // Find out how many blocks it will take to
    // satisfy this allocation
    PagesNeeded = FUNC2(MemorySize, MM_PAGE_SIZE) / MM_PAGE_SIZE;

    // Get the starting page number
    StartPageNumber = FUNC1(MemoryAddress);

    // Set new type for these pages
    FUNC0(PageLookupTableAddress, StartPageNumber, PagesNeeded, NewType);
}