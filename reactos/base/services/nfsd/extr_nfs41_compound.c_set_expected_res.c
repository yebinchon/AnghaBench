
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_7__ {size_t argarray_count; TYPE_4__* argarray; } ;
struct TYPE_9__ {size_t resarray_count; TYPE_2__* resarray; } ;
struct TYPE_11__ {TYPE_1__ args; TYPE_3__ res; } ;
typedef TYPE_5__ nfs41_compound ;
struct TYPE_10__ {int op; } ;
struct TYPE_8__ {int op; } ;



__attribute__((used)) static void set_expected_res(
    nfs41_compound *compound)
{
    uint32_t i;
    compound->res.resarray_count = compound->args.argarray_count;
    for (i = 0; i < compound->res.resarray_count; i++)
        compound->res.resarray[i].op = compound->args.argarray[i].op;
}
