
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
typedef int msg ;
typedef int msec ;


 int AF_SP ;
 int NN_REQ ;
 unsigned int atoi (char const*) ;
 int fprintf (int ,char*,char*) ;
 unsigned int htonl (unsigned int) ;
 int memcpy (int *,unsigned int*,int) ;
 scalar_t__ milliseconds () ;
 int nn_close (int) ;
 scalar_t__ nn_connect (int,char const*) ;
 int nn_errno () ;
 int nn_recv (int,int **,int,int ) ;
 scalar_t__ nn_send (int,int *,int,int ) ;
 int nn_socket (int ,int ) ;
 char* nn_strerror (int ) ;
 int printf (char*,int) ;
 int stderr ;

int client (const char *url, const char *msecstr)
{
    int fd;
    int rc;
    char *greeting;
    uint8_t msg[sizeof (uint32_t)];
    uint64_t start;
    uint64_t end;
    unsigned msec;

    msec = atoi(msecstr);

    fd = nn_socket (AF_SP, NN_REQ);
    if (fd < 0) {
        fprintf (stderr, "nn_socket: %s\n", nn_strerror (nn_errno ()));
        return (-1);
    }

    if (nn_connect (fd, url) < 0) {
        fprintf (stderr, "nn_socket: %s\n", nn_strerror (nn_errno ()));
        nn_close (fd);
        return (-1);
    }

    msec = htonl(msec);
    memcpy (msg, &msec, sizeof (msec));

    start = milliseconds ();

    if (nn_send (fd, msg, sizeof (msg), 0) < 0) {
        fprintf (stderr, "nn_send: %s\n", nn_strerror (nn_errno ()));
        nn_close (fd);
        return (-1);
    }

    rc = nn_recv (fd, &msg, sizeof (msg), 0);
    if (rc < 0) {
        fprintf (stderr, "nn_recv: %s\n", nn_strerror (nn_errno ()));
        nn_close (fd);
        return (-1);
    }

    nn_close (fd);

    end = milliseconds ();

    printf ("Request took %u milliseconds.\n", (uint32_t)(end - start));
    return (0);
}
