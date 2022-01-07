
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mp_ipc_ctx {int client_api; } ;
struct client_arg {int client_h; int client; int log; int client_name; } ;
typedef int pthread_t ;


 int CloseHandle (int ) ;
 int client_thread ;
 int mp_client_get_log (int ) ;
 int mp_new_client (int ,int ) ;
 int mpv_destroy (int ) ;
 scalar_t__ pthread_create (int *,int *,int ,struct client_arg*) ;
 int talloc_free (struct client_arg*) ;

__attribute__((used)) static void ipc_start_client(struct mp_ipc_ctx *ctx, struct client_arg *client)
{
    client->client = mp_new_client(ctx->client_api, client->client_name),
    client->log = mp_client_get_log(client->client);

    pthread_t client_thr;
    if (pthread_create(&client_thr, ((void*)0), client_thread, client)) {
        mpv_destroy(client->client);
        CloseHandle(client->client_h);
        talloc_free(client);
    }
}
