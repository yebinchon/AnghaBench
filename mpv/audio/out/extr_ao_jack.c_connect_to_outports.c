
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct priv {int num_ports; int * ports; int client; TYPE_1__* opts; } ;
struct ao {struct priv* priv; } ;
struct TYPE_2__ {char* port; } ;


 char* JACK_DEFAULT_AUDIO_TYPE ;
 int JackPortIsInput ;
 int JackPortIsPhysical ;
 int MP_FATAL (struct ao*,char*) ;
 int free (char const**) ;
 scalar_t__ jack_connect (int ,int ,char const*) ;
 char** jack_get_ports (int ,char*,char const*,int) ;
 int jack_port_name (int ) ;

__attribute__((used)) static int
connect_to_outports(struct ao *ao)
{
    struct priv *p = ao->priv;

    char *port_name = (p->opts->port && p->opts->port[0]) ? p->opts->port : ((void*)0);
    const char **matching_ports = ((void*)0);
    int port_flags = JackPortIsInput;
    int i;

    if (!port_name)
        port_flags |= JackPortIsPhysical;

    const char *port_type = JACK_DEFAULT_AUDIO_TYPE;
    matching_ports = jack_get_ports(p->client, port_name, port_type, port_flags);

    if (!matching_ports || !matching_ports[0]) {
        MP_FATAL(ao, "no ports to connect to\n");
        goto err_get_ports;
    }

    for (i = 0; i < p->num_ports && matching_ports[i]; i++) {
        if (jack_connect(p->client, jack_port_name(p->ports[i]),
                         matching_ports[i]))
        {
            MP_FATAL(ao, "connecting failed\n");
            goto err_connect;
        }
    }

    free(matching_ports);
    return 0;

err_connect:
    free(matching_ports);
err_get_ports:
    return -1;
}
