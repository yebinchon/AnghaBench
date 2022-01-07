
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF_SP ;
 int NN_MSG ;
 int NN_REQ ;
 char* calloc (int,int) ;
 int errno ;
 int fprintf (int ,char*,char*) ;
 int free (char*) ;
 int memcpy (char*,char*,int) ;
 int nn_close (int) ;
 scalar_t__ nn_connect (int,char const*) ;
 int nn_errno () ;
 int nn_freemsg (char*) ;
 int nn_recv (int,char**,int ,int ) ;
 scalar_t__ nn_send (int,char const*,int ,int ) ;
 int nn_socket (int ,int ) ;
 char* nn_strerror (int ) ;
 int printf (char*,char*) ;
 int stderr ;
 char* strerror (int ) ;
 int strlen (char const*) ;
 int usleep (int) ;

int client (const char *url, const char *username)
{
    int fd;
    int rc;
    char *greeting;
    char *msg;

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

    usleep(1000);

    if (nn_send (fd, username, strlen (username), 0) < 0) {
        fprintf (stderr, "nn_send: %s\n", nn_strerror (nn_errno ()));
        nn_close (fd);
        return (-1);
    }


    rc = nn_recv (fd, &msg, NN_MSG, 0);
    if (rc < 0) {
        fprintf (stderr, "nn_recv: %s\n", nn_strerror (nn_errno ()));
        nn_close (fd);
        return (-1);
    }

    nn_close (fd);


    greeting = calloc (rc + 1, 1);
    if (greeting == ((void*)0)) {
        fprintf (stderr, "calloc: %s\n", strerror (errno));
        return (-1);
    }
    memcpy(greeting, msg, rc);

    nn_freemsg (msg);
    printf ("%s\n", greeting);
    free (greeting);
    return (0);
}
