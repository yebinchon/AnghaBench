#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_9__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
struct TYPE_20__ {unsigned int* table_sizes; } ;
struct TYPE_19__ {int /*<<< orphan*/  regset2table; } ;
struct d3dx_preshader {int ins_count; TYPE_7__ regs; TYPE_10__* ins; TYPE_6__ inputs; } ;
struct d3dx9_base_effect {int dummy; } ;
typedef  enum pres_reg_tables { ____Placeholder_pres_reg_tables } pres_reg_tables ;
struct TYPE_21__ {unsigned int input_count; } ;
struct TYPE_17__ {int table; unsigned int offset; } ;
struct TYPE_18__ {TYPE_4__ reg; } ;
struct TYPE_15__ {scalar_t__ table; unsigned int offset; } ;
struct TYPE_14__ {int table; unsigned int offset; } ;
struct TYPE_16__ {TYPE_2__ index_reg; TYPE_1__ reg; } ;
struct TYPE_13__ {size_t op; int component_count; TYPE_5__ output; TYPE_3__* inputs; scalar_t__ scalar_op; } ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  D3DXERR_INVALIDDATA ; 
 int /*<<< orphan*/  D3D_OK ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int,unsigned int,...) ; 
 int /*<<< orphan*/  FOURCC_CLIT ; 
 int /*<<< orphan*/  FOURCC_FXLC ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 TYPE_10__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ PRES_REGTAB_COUNT ; 
 size_t PRES_REGTAB_IMMED ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned int) ; 
 int UINT_MAX ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 unsigned int* FUNC6 (unsigned int*,unsigned int,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int*,TYPE_6__*,struct d3dx9_base_effect*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned int FUNC8 (size_t) ; 
 void* FUNC9 (int,unsigned int) ; 
 unsigned int* FUNC10 (unsigned int*,unsigned int,TYPE_10__*) ; 
 TYPE_9__* pres_op_info ; 
 int /*<<< orphan*/  pres_regset2table ; 
 int /*<<< orphan*/  FUNC11 (TYPE_7__*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_7__*,size_t,double*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (unsigned int*,int,void*) ; 
 int /*<<< orphan*/  FUNC14 (unsigned int*,TYPE_6__*) ; 

__attribute__((used)) static HRESULT FUNC15(struct d3dx_preshader *pres, unsigned int *ptr, unsigned int count, struct d3dx9_base_effect *base)
{
    unsigned int *p;
    unsigned int i, j, const_count;
    double *dconst;
    HRESULT hr;
    unsigned int saved_word;
    unsigned int section_size;

    FUNC4("Preshader version %#x.\n", *ptr & 0xffff);

    if (!count)
    {
        FUNC5("Unexpected end of byte code buffer.\n");
        return D3DXERR_INVALIDDATA;
    }

    p = FUNC6(ptr + 1, count - 1, FOURCC_CLIT, &section_size);
    if (p)
    {
        const_count = *p++;
        if (const_count > (section_size - 1) / (sizeof(double) / sizeof(unsigned int)))
        {
            FUNC5("Byte code buffer ends unexpectedly.\n");
            return D3DXERR_INVALIDDATA;
        }
        dconst = (double *)p;
    }
    else
    {
        const_count = 0;
        dconst = NULL;
    }
    FUNC4("%u double constants.\n", const_count);

    p = FUNC6(ptr + 1, count - 1, FOURCC_FXLC, &section_size);
    if (!p)
    {
        FUNC5("Could not find preshader code.\n");
        return D3D_OK;
    }
    pres->ins_count = *p++;
    --section_size;
    if (pres->ins_count > UINT_MAX / sizeof(*pres->ins))
    {
        FUNC5("Invalid instruction count %u.\n", pres->ins_count);
        return D3DXERR_INVALIDDATA;
    }
    FUNC4("%u instructions.\n", pres->ins_count);
    pres->ins = FUNC3(FUNC2(), HEAP_ZERO_MEMORY, sizeof(*pres->ins) * pres->ins_count);
    if (!pres->ins)
        return E_OUTOFMEMORY;
    for (i = 0; i < pres->ins_count; ++i)
    {
        unsigned int *ptr_next;

        ptr_next = FUNC10(p, section_size, &pres->ins[i]);
        if (!ptr_next)
            return D3DXERR_INVALIDDATA;
        section_size -= ptr_next - p;
        p = ptr_next;
    }

    pres->inputs.regset2table = pres_regset2table;

    saved_word = *ptr;
    *ptr = 0xfffe0000;
    hr = FUNC7(ptr, &pres->inputs, base, NULL, 0, NULL);
    *ptr = saved_word;
    if (FUNC0(hr))
        return hr;

    if (const_count % FUNC8(PRES_REGTAB_IMMED))
    {
        FUNC1("const_count %u is not a multiple of %u.\n", const_count,
                FUNC8(PRES_REGTAB_IMMED));
        return D3DXERR_INVALIDDATA;
    }
    pres->regs.table_sizes[PRES_REGTAB_IMMED] = FUNC9(PRES_REGTAB_IMMED, const_count);

    FUNC14(pres->regs.table_sizes, &pres->inputs);
    for (i = 0; i < pres->ins_count; ++i)
    {
        for (j = 0; j < pres_op_info[pres->ins[i].op].input_count; ++j)
        {
            enum pres_reg_tables table;
            unsigned int reg_idx;

            if (pres->ins[i].inputs[j].index_reg.table == PRES_REGTAB_COUNT)
            {
                unsigned int last_component_index = pres->ins[i].scalar_op && !j ? 0
                        : pres->ins[i].component_count - 1;

                table = pres->ins[i].inputs[j].reg.table;
                reg_idx = FUNC9(table, pres->ins[i].inputs[j].reg.offset
                        + last_component_index);
            }
            else
            {
                table = pres->ins[i].inputs[j].index_reg.table;
                reg_idx = FUNC9(table, pres->ins[i].inputs[j].index_reg.offset);
            }
            if (reg_idx >= pres->regs.table_sizes[table])
            {
                /* Native accepts these broken preshaders. */
                FUNC1("Out of bounds register index, i %u, j %u, table %u, reg_idx %u, preshader parsing failed.\n",
                        i, j, table, reg_idx);
                return D3DXERR_INVALIDDATA;
            }
        }
        FUNC13(pres->regs.table_sizes, pres->ins[i].output.reg.table,
                FUNC9(pres->ins[i].output.reg.table, pres->ins[i].output.reg.offset));
    }
    if (FUNC0(FUNC11(&pres->regs, PRES_REGTAB_IMMED)))
        return E_OUTOFMEMORY;
    FUNC12(&pres->regs, PRES_REGTAB_IMMED, dconst, 0, const_count);

    return D3D_OK;
}