
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int subs ;
typedef int secs ;
typedef int msg ;


 int AF_SP ;
 int NN_PUB ;
 int NN_STAT_CURRENT_CONNECTIONS ;
 int fprintf (int ,char*,char*) ;
 scalar_t__ htonl (scalar_t__) ;
 int memcpy (int *,scalar_t__*,int) ;
 scalar_t__ nn_bind (int,char const*) ;
 int nn_close (int) ;
 int nn_errno () ;
 scalar_t__ nn_get_statistic (int,int ) ;
 int nn_send (int,int *,int,int ) ;
 int nn_socket (int ,int ) ;
 char* nn_strerror (int ) ;
 int sleep (int) ;
 int stderr ;
 scalar_t__ time (int *) ;

int server(const char *url)
{
    int fd;


    fd = nn_socket (AF_SP, NN_PUB);
    if (fd < 0) {
        fprintf (stderr, "nn_socket: %s\n", nn_strerror (nn_errno ()));
        return (-1);
    }





    if (nn_bind (fd, url) < 0) {
        fprintf (stderr, "nn_bind: %s\n", nn_strerror (nn_errno ()));
        nn_close (fd);
        return (-1);
    }




    for (;;) {
        uint8_t msg[2 * sizeof (uint32_t)];
        uint32_t secs, subs;
        int rc;

        secs = (uint32_t) time (((void*)0));
        subs = (uint32_t) nn_get_statistic (fd, NN_STAT_CURRENT_CONNECTIONS);

        secs = htonl (secs);
        subs = htonl (subs);

        memcpy (msg, &secs, sizeof (secs));
        memcpy (msg + sizeof (secs), &subs, sizeof (subs));

        rc = nn_send (fd, msg, sizeof (msg), 0);
        if (rc < 0) {



            fprintf (stderr, "nn_send: %s (ignoring)\n",
                nn_strerror (nn_errno ()));
        }
        sleep(10);
    }


    nn_close (fd);
    return (-1);
}
