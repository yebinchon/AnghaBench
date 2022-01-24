#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ len; } ;
union codeview_type {TYPE_1__ generic; } ;
struct pdb_file_info {int dummy; } ;
struct msc_debug_info {int /*<<< orphan*/  module; } ;
struct codeview_type_parse {int num; int* offset; int /*<<< orphan*/  const* table; int /*<<< orphan*/  module; } ;
struct TYPE_5__ {int version; int last_index; int first_index; int type_offset; int type_size; } ;
typedef  TYPE_2__ PDB_TYPES ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct codeview_type_parse*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (struct pdb_file_info const*,int) ; 

__attribute__((used)) static void FUNC8(const struct msc_debug_info* msc_dbg,
                              const struct pdb_file_info* pdb_file)
{
    BYTE*       types_image = NULL;

    types_image = FUNC7(pdb_file, 2);
    if (types_image)
    {
        PDB_TYPES               types;
        struct codeview_type_parse      ctp;
        DWORD                   total;
        const BYTE*             ptr;
        DWORD*                  offset;

        FUNC5(&types, types_image);

        /* Check for unknown versions */
        switch (types.version)
        {
        case 19950410:      /* VC 4.0 */
        case 19951122:
        case 19961031:      /* VC 5.0 / 6.0 */
        case 19990903:      /* VC 7.0 */
        case 20040203:      /* VC 8.0 */
            break;
        default:
            FUNC0("-Unknown type info version %d\n", types.version);
        }

        ctp.module = msc_dbg->module;
        /* reconstruct the types offset...
         * FIXME: maybe it's present in the newest PDB_TYPES structures
         */
        total = types.last_index - types.first_index + 1;
        offset = FUNC2(FUNC1(), 0, sizeof(DWORD) * total);
        ctp.table = ptr = types_image + types.type_offset;
        ctp.num = 0;
        while (ptr < ctp.table + types.type_size && ctp.num < total)
        {
            offset[ctp.num++] = ptr - ctp.table;
            ptr += ((const union codeview_type*)ptr)->generic.len + 2;
        }
        ctp.offset = offset;

        /* Read type table */
        FUNC4(&ctp);
        FUNC3(FUNC1(), 0, offset);
        FUNC6(types_image);
    }
}