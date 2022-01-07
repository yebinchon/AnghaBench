
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int flinfo; int collation; TYPE_1__* tinfo; } ;
typedef TYPE_2__ gbt_vsrt_arg ;
struct TYPE_8__ {int t; } ;
typedef TYPE_3__ Vsrt ;
struct TYPE_9__ {int upper; int lower; } ;
struct TYPE_6__ {int (* f_cmp ) (int ,int ,int ,int ) ;} ;
typedef TYPE_4__ GBT_VARKEY_R ;


 TYPE_4__ gbt_var_key_readable (int ) ;
 int stub1 (int ,int ,int ,int ) ;
 int stub2 (int ,int ,int ,int ) ;

__attribute__((used)) static int
gbt_vsrt_cmp(const void *a, const void *b, void *arg)
{
 GBT_VARKEY_R ar = gbt_var_key_readable(((const Vsrt *) a)->t);
 GBT_VARKEY_R br = gbt_var_key_readable(((const Vsrt *) b)->t);
 const gbt_vsrt_arg *varg = (const gbt_vsrt_arg *) arg;
 int res;

 res = varg->tinfo->f_cmp(ar.lower, br.lower, varg->collation, varg->flinfo);
 if (res == 0)
  return varg->tinfo->f_cmp(ar.upper, br.upper, varg->collation, varg->flinfo);

 return res;
}
