
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ time_t ;
typedef int subs ;
typedef int secs ;
typedef int msg ;
typedef int hhmmss ;


 int AF_SP ;
 int NN_SUB ;
 int NN_SUB_SUBSCRIBE ;
 int fprintf (int ,char*,...) ;
 scalar_t__ getpid () ;
 int localtime (scalar_t__*) ;
 int memcpy (int *,int *,int) ;
 int nn_close (int) ;
 scalar_t__ nn_connect (int,char const*) ;
 int nn_errno () ;
 int nn_recv (int,int *,int,int ) ;
 scalar_t__ nn_setsockopt (int,int ,int ,char*,int ) ;
 int nn_socket (int ,int ) ;
 char* nn_strerror (int ) ;
 scalar_t__ ntohl (int ) ;
 int printf (char*,char*,unsigned int,unsigned int) ;
 int stderr ;
 int strftime (char*,int,char*,int ) ;

int client (const char *url)
{
    int fd;
    int rc;

    fd = nn_socket (AF_SP, NN_SUB);
    if (fd < 0) {
        fprintf (stderr, "nn_socket: %s\n", nn_strerror (nn_errno ()));
        return (-1);
    }

    if (nn_connect (fd, url) < 0) {
        fprintf (stderr, "nn_socket: %s\n", nn_strerror (nn_errno ()));
        nn_close (fd);
        return (-1);
    }


    if (nn_setsockopt (fd, NN_SUB, NN_SUB_SUBSCRIBE, "", 0) < 0) {
        fprintf (stderr, "nn_setsockopt: %s\n", nn_strerror (nn_errno ()));
        nn_close (fd);
        return (-1);
    }

    for (;;) {
        uint8_t msg[2 * sizeof (uint32_t)];
        char hhmmss[9];
        uint32_t subs, secs;
        time_t t;

        rc = nn_recv (fd, msg, sizeof (msg), 0);
        if (rc < 0) {
            fprintf (stderr, "nn_recv: %s\n", nn_strerror (nn_errno ()));
            break;
        }
        if (rc != sizeof (msg)) {
            fprintf (stderr, "nn_recv: got %d bytes, wanted %d\n",
                rc, (int)sizeof (msg));
             break;
        }
        memcpy (&secs, msg, sizeof (secs));
        memcpy (&subs, msg + sizeof (secs), sizeof (subs));

        t = (time_t) ntohl(secs);
        strftime (hhmmss, sizeof (hhmmss), "%T", localtime (&t));

        printf ("%s <pid %u> There are %u clients connected.\n", hhmmss,
            (unsigned) getpid(), (unsigned) ntohl(subs));
    }

    nn_close (fd);
    return (-1);
}
