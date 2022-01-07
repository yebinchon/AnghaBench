
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpv_handle {int name; } ;
struct mp_client_api {int num_clients; struct mpv_handle** clients; } ;


 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static struct mpv_handle *find_client(struct mp_client_api *clients,
                                      const char *name)
{
    for (int n = 0; n < clients->num_clients; n++) {
        if (strcmp(clients->clients[n]->name, name) == 0)
            return clients->clients[n];
    }
    return ((void*)0);
}
