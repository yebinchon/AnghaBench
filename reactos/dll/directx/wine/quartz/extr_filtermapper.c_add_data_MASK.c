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
struct Vector {int current; int capacity; int /*<<< orphan*/ * pData; } ;
typedef  int /*<<< orphan*/  const* LPBYTE ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int FUNC3(struct Vector * v, const BYTE * pData, int size)
{
    int index = v->current;
    if (v->current + size > v->capacity)
    {
        LPBYTE pOldData = v->pData;
        v->capacity = (v->capacity + size) * 2;
        v->pData = FUNC0(v->capacity);
        FUNC2(v->pData, pOldData, v->current);
        FUNC1(pOldData);
    }
    FUNC2(v->pData + v->current, pData, size);
    v->current += size;
    return index;
}