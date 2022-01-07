
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ auth_user_pass_file; int sc_info; scalar_t__ key_pass_file; } ;
struct context {TYPE_1__ options; } ;


 int auth_user_pass_setup (scalar_t__,int *) ;
 int pem_password_setup (scalar_t__) ;

void
init_query_passwords(const struct context *c)
{

    if (c->options.key_pass_file)
    {
        pem_password_setup(c->options.key_pass_file);
    }
}
