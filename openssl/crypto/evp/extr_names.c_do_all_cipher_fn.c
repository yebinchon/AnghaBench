
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct doall_cipher {int arg; int (* fn ) (int const*,int ,int *,int ) ;} ;
struct TYPE_3__ {int name; int * data; scalar_t__ alias; } ;
typedef TYPE_1__ OBJ_NAME ;
typedef int EVP_CIPHER ;


 int stub1 (int const*,int ,int *,int ) ;
 int stub2 (int const*,int ,int *,int ) ;

__attribute__((used)) static void do_all_cipher_fn(const OBJ_NAME *nm, void *arg)
{
    struct doall_cipher *dc = arg;
    if (nm->alias)
        dc->fn(((void*)0), nm->name, nm->data, dc->arg);
    else
        dc->fn((const EVP_CIPHER *)nm->data, nm->name, ((void*)0), dc->arg);
}
