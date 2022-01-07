
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct web_client {int dummy; } ;
typedef int RRDHOST ;


 int check_host_and_call (int *,struct web_client*,char*,int (*) (int *,struct web_client*,char*)) ;
 int web_client_can_access_dashboard (struct web_client*) ;
 int web_client_permission_denied (struct web_client*) ;

__attribute__((used)) static inline int check_host_and_dashboard_acl_and_call(RRDHOST *host, struct web_client *w, char *url, int (*func)(RRDHOST *, struct web_client *, char *)) {
    if(!web_client_can_access_dashboard(w))
        return web_client_permission_denied(w);

    return check_host_and_call(host, w, url, func);
}
