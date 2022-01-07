
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
struct TYPE_10__ {TYPE_2__* resarray; int resarray_count; } ;
struct TYPE_9__ {TYPE_1__* argarray; int argarray_count; } ;
struct TYPE_11__ {TYPE_4__ res; TYPE_3__ args; } ;
typedef TYPE_5__ nfs41_compound ;
struct TYPE_8__ {size_t op; void* res; } ;
struct TYPE_7__ {size_t op; void* arg; } ;



void compound_add_op(
    nfs41_compound *compound,
    uint32_t opnum,
    void *arg,
    void *res)
{
    const uint32_t i = compound->args.argarray_count++;
    const uint32_t j = compound->res.resarray_count++;
    compound->args.argarray[i].op = opnum;
    compound->args.argarray[i].arg = arg;
    compound->res.resarray[j].op = opnum;
    compound->res.resarray[j].res = res;
}
