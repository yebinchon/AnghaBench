
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct user_pass {int password; int username; } ;
struct TYPE_4__ {int * pkcs11_cert_private; int * pkcs11_private_mode; int * pkcs11_protected_authentication; int ** pkcs11_providers; int pkcs11_pin_cache_period; } ;
struct TYPE_3__ {int pid_persist; } ;
struct context {TYPE_2__ options; scalar_t__ first_time; TYPE_1__ c1; } ;


 int CLEAR (struct user_pass) ;
 int GET_USER_PASS_MANAGEMENT ;
 int GET_USER_PASS_NEED_OK ;
 int MAX_PARMS ;
 int M_INFO ;
 int context_clear_1 (struct context*) ;
 int get_user_pass (struct user_pass*,int *,char*,int) ;
 scalar_t__ getpid () ;
 int init_connection_list (struct context*) ;
 int msg (int ,char*,int ) ;
 int packet_id_persist_init (int *) ;
 int pkcs11_addProvider (int *,int ,int ,int ) ;
 int pkcs11_initialize (int,int ) ;
 int save_ncp_options (struct context*) ;
 int sd_notifyf (int ,char*,unsigned long) ;
 int strcpy (int ,char*) ;

void
context_init_1(struct context *c)
{
    context_clear_1(c);

    packet_id_persist_init(&c->c1.pid_persist);

    init_connection_list(c);

    save_ncp_options(c);
}
