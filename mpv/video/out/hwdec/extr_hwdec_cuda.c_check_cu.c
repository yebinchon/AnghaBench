
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ra_hwdec {struct cuda_hw_priv* priv; } ;
struct cuda_hw_priv {TYPE_1__* cu; } ;
struct TYPE_2__ {int (* cuGetErrorString ) (int ,char const**) ;int (* cuGetErrorName ) (int ,char const**) ;} ;
typedef int CUresult ;


 int CUDA_SUCCESS ;
 int MP_ERR (struct ra_hwdec const*,char*,...) ;
 int MP_TRACE (struct ra_hwdec const*,char*,char const*) ;
 int stub1 (int ,char const**) ;
 int stub2 (int ,char const**) ;

int check_cu(const struct ra_hwdec *hw, CUresult err, const char *func)
{
    const char *err_name;
    const char *err_string;

    struct cuda_hw_priv *p = hw->priv;

    MP_TRACE(hw, "Calling %s\n", func);

    if (err == CUDA_SUCCESS)
        return 0;

    p->cu->cuGetErrorName(err, &err_name);
    p->cu->cuGetErrorString(err, &err_string);

    MP_ERR(hw, "%s failed", func);
    if (err_name && err_string)
        MP_ERR(hw, " -> %s: %s", err_name, err_string);
    MP_ERR(hw, "\n");

    return -1;
}
