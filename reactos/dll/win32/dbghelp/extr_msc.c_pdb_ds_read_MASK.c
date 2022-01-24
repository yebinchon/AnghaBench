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
struct PDB_DS_HEADER {int block_size; } ;
typedef  int DWORD ;
typedef  void BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,char const*,int const) ; 

__attribute__((used)) static void* FUNC3(const struct PDB_DS_HEADER* pdb, const DWORD* block_list,
                         int size)
{
    int                         i, num_blocks;
    BYTE*                       buffer;

    if (!size) return NULL;

    num_blocks = (size + pdb->block_size - 1) / pdb->block_size;
    buffer = FUNC1(FUNC0(), 0, num_blocks * pdb->block_size);

    for (i = 0; i < num_blocks; i++)
        FUNC2(buffer + i * pdb->block_size,
               (const char*)pdb + block_list[i] * pdb->block_size, pdb->block_size);

    return buffer;
}