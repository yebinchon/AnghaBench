
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct doall_md {int arg; int (* fn ) (int const*,int ,int *,int ) ;} ;
struct TYPE_3__ {int name; int * data; scalar_t__ alias; } ;
typedef TYPE_1__ OBJ_NAME ;
typedef int EVP_MD ;


 int stub1 (int const*,int ,int *,int ) ;
 int stub2 (int const*,int ,int *,int ) ;

__attribute__((used)) static void do_all_md_fn(const OBJ_NAME *nm, void *arg)
{
    struct doall_md *dc = arg;
    if (nm->alias)
        dc->fn(((void*)0), nm->name, nm->data, dc->arg);
    else
        dc->fn((const EVP_MD *)nm->data, nm->name, ((void*)0), dc->arg);
}
