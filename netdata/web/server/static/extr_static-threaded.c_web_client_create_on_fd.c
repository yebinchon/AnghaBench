
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct web_client {int pollinfo_slot; int port_acl; int * client_port; int * client_ip; int * client_host; int ofd; int ifd; } ;
struct TYPE_3__ {int slot; int port_acl; int client_host; int client_port; int client_ip; int fd; } ;
typedef TYPE_1__ POLLINFO ;


 int strcpy (int *,char*) ;
 int strncpyz (int *,int ,int) ;
 scalar_t__ unlikely (int) ;
 struct web_client* web_client_get_from_cache_or_allocate () ;
 int web_client_initialize_connection (struct web_client*) ;

__attribute__((used)) static struct web_client *web_client_create_on_fd(POLLINFO *pi) {
    struct web_client *w;

    w = web_client_get_from_cache_or_allocate();
    w->ifd = w->ofd = pi->fd;

    strncpyz(w->client_ip, pi->client_ip, sizeof(w->client_ip) - 1);
    strncpyz(w->client_port, pi->client_port, sizeof(w->client_port) - 1);
    strncpyz(w->client_host, pi->client_host, sizeof(w->client_host) - 1);

    if(unlikely(!*w->client_ip)) strcpy(w->client_ip, "-");
    if(unlikely(!*w->client_port)) strcpy(w->client_port, "-");
 w->port_acl = pi->port_acl;

    web_client_initialize_connection(w);
    w->pollinfo_slot = pi->slot;
    return(w);
}
