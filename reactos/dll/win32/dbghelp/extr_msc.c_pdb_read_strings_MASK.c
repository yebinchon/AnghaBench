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
struct pdb_file_info {int dummy; } ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 unsigned int FUNC2 (struct pdb_file_info const*,char*) ; 
 void* FUNC3 (struct pdb_file_info const*,unsigned int) ; 

__attribute__((used)) static void* FUNC4(const struct pdb_file_info* pdb_file)
{
    unsigned idx;
    void *ret;

    idx = FUNC2(pdb_file, "/names");
    if (idx != -1)
    {
        ret = FUNC3( pdb_file, idx );
        if (ret && *(const DWORD *)ret == 0xeffeeffe) return ret;
        FUNC1( ret );
    }
    FUNC0("string table not found\n");
    return NULL;
}