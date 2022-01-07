
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF_SP_RAW ;
 int NN_REP ;
 int NN_REQ ;
 int fprintf (int ,char*,char const*,...) ;
 scalar_t__ nn_bind (int,char const*) ;
 scalar_t__ nn_device (int,int) ;
 int nn_errno () ;
 int nn_socket (int ,int ) ;
 char* nn_strerror (int ) ;
 int stderr ;

int device (const char *url1, const char *url2)
{
    int s1, s2, rv;
    s1 = nn_socket (AF_SP_RAW, NN_REQ);
    if (s1 < 0) {
        fprintf (stderr, "nn_socket: %s\n", nn_strerror (nn_errno ()));
        return (-1);
    }
    if (nn_bind (s1, url1) < 0) {
        fprintf (stderr, "nn_bind1(%s): %s\n", url1, nn_strerror (nn_errno ()));
        return (-1);
    }
    s2 = nn_socket (AF_SP_RAW, NN_REP);
    if (s2 < 0) {
        fprintf (stderr, "nn_socket: %s\n", nn_strerror(nn_errno ()));
        return (-1);
    }
    if (nn_bind (s2, url2) < 0) {
        fprintf (stderr, "nn_bind2(%s): %s\n", url2, nn_strerror (nn_errno ()));
        return (-1);
    }

    if (nn_device (s1, s2) != 0) {
        fprintf (stderr, "nn_device: %s\n", nn_strerror (nn_errno ()));
        return (-1);
    }
    return (0);
}
