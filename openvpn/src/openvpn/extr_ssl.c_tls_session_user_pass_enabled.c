
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tls_session {TYPE_1__* opt; } ;
struct TYPE_2__ {int plugins; scalar_t__ auth_user_pass_verify_script; } ;


 int OPENVPN_PLUGIN_AUTH_USER_PASS_VERIFY ;
 int management ;
 scalar_t__ management_enable_def_auth (int ) ;
 scalar_t__ plugin_defined (int ,int ) ;

__attribute__((used)) static inline bool
tls_session_user_pass_enabled(struct tls_session *session)
{
    return (session->opt->auth_user_pass_verify_script
            || plugin_defined(session->opt->plugins, OPENVPN_PLUGIN_AUTH_USER_PASS_VERIFY)



            );
}
