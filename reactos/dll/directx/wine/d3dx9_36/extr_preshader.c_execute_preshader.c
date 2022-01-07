
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct op_info {int input_count; double (* func ) (double*,unsigned int) ;scalar_t__ func_all_comps; } ;
struct d3dx_preshader {unsigned int ins_count; int regs; struct d3dx_pres_ins* ins; } ;
struct TYPE_2__ {int reg; } ;
struct d3dx_pres_ins {size_t op; int component_count; TYPE_1__ output; scalar_t__ scalar_op; int * inputs; } ;
typedef int HRESULT ;


 int ARGS_ARRAY_SIZE ;
 int D3D_OK ;
 int E_FAIL ;
 int FIXME (char*,int) ;
 double exec_get_arg (int *,int *,unsigned int) ;
 int exec_set_arg (int *,int *,unsigned int,double) ;
 struct op_info* pres_op_info ;
 double stub1 (double*,unsigned int) ;
 double stub2 (double*,unsigned int) ;

__attribute__((used)) static HRESULT execute_preshader(struct d3dx_preshader *pres)
{
    unsigned int i, j, k;
    double args[ARGS_ARRAY_SIZE];
    double res;

    for (i = 0; i < pres->ins_count; ++i)
    {
        const struct d3dx_pres_ins *ins;
        const struct op_info *oi;

        ins = &pres->ins[i];
        oi = &pres_op_info[ins->op];
        if (oi->func_all_comps)
        {
            if (oi->input_count * ins->component_count > ARGS_ARRAY_SIZE)
            {
                FIXME("Too many arguments (%u) for one instruction.\n", oi->input_count * ins->component_count);
                return E_FAIL;
            }
            for (k = 0; k < oi->input_count; ++k)
                for (j = 0; j < ins->component_count; ++j)
                    args[k * ins->component_count + j] = exec_get_arg(&pres->regs, &ins->inputs[k],
                            ins->scalar_op && !k ? 0 : j);
            res = oi->func(args, ins->component_count);


            exec_set_arg(&pres->regs, &ins->output.reg, 0, res);
        }
        else
        {
            for (j = 0; j < ins->component_count; ++j)
            {
                for (k = 0; k < oi->input_count; ++k)
                    args[k] = exec_get_arg(&pres->regs, &ins->inputs[k], ins->scalar_op && !k ? 0 : j);
                res = oi->func(args, ins->component_count);
                exec_set_arg(&pres->regs, &ins->output.reg, j, res);
            }
        }
    }
    return D3D_OK;
}
