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
typedef  int tableType_t ;
typedef  size_t U32 ;
typedef  int /*<<< orphan*/  U16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  byPtr 131 
#define  byU16 130 
#define  byU32 129 
#define  clearedTable 128 

__attribute__((used)) static void FUNC1(U32 idx, U32 h, void* tableBase, tableType_t const tableType)
{
    switch (tableType)
    {
    default: /* fallthrough */
    case clearedTable: /* fallthrough */
    case byPtr: { /* illegal! */ FUNC0(0); return; }
    case byU32: { U32* hashTable = (U32*) tableBase; hashTable[h] = idx; return; }
    case byU16: { U16* hashTable = (U16*) tableBase; FUNC0(idx < 65536); hashTable[h] = (U16)idx; return; }
    }
}