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
struct BitField {int cIndexes; int* indexes; } ;
typedef  int DWORD ;

/* Variables and functions */
 int BITS_PER_DWORD ; 
 int* FUNC0 (int) ; 
 int* FUNC1 (int*,int) ; 

__attribute__((used)) static void FUNC2(struct BitField *field, DWORD bit)
{
    DWORD indexIndex = bit / BITS_PER_DWORD;

    if (indexIndex + 1 > field->cIndexes)
    {
        if (field->cIndexes)
            field->indexes = FUNC1(field->indexes,
             (indexIndex + 1) * sizeof(DWORD));
        else
            field->indexes = FUNC0(sizeof(DWORD));
        if (field->indexes)
        {
            field->indexes[indexIndex] = 0;
            field->cIndexes = indexIndex + 1;
        }
    }
    if (field->indexes)
        field->indexes[indexIndex] |= 1 << (bit % BITS_PER_DWORD);
}