
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int client; } ;
struct ao {struct priv* priv; } ;


 int jack_client_close (int ) ;

__attribute__((used)) static void uninit(struct ao *ao)
{
    struct priv *p = ao->priv;

    jack_client_close(p->client);
}
