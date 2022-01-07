
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int defined; } ;
struct TYPE_4__ {int auth_file; scalar_t__ inline_creds; } ;
struct http_proxy_info {int queried_creds; TYPE_2__ up; TYPE_1__ options; } ;


 unsigned int GET_USER_PASS_INLINE_CREDS ;
 unsigned int GET_USER_PASS_MANAGEMENT ;
 unsigned int GET_USER_PASS_PREVIOUS_CREDS_FAILED ;
 int UP_TYPE_PROXY ;
 int clear_user_pass_http () ;
 int get_user_pass (TYPE_2__*,int ,int ,unsigned int) ;
 TYPE_2__ static_proxy_user_pass ;

__attribute__((used)) static void
get_user_pass_http(struct http_proxy_info *p, const bool force)
{




    if (force)
    {
        clear_user_pass_http();
    }

    if (!static_proxy_user_pass.defined)
    {
        unsigned int flags = GET_USER_PASS_MANAGEMENT;
        if (p->queried_creds)
        {
            flags |= GET_USER_PASS_PREVIOUS_CREDS_FAILED;
        }
        if (p->options.inline_creds)
        {
            flags |= GET_USER_PASS_INLINE_CREDS;
        }
        get_user_pass(&static_proxy_user_pass,
                      p->options.auth_file,
                      UP_TYPE_PROXY,
                      flags);
        p->queried_creds = 1;
        p->up = static_proxy_user_pass;
    }
}
