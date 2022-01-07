
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int username ;
typedef int time_t ;
struct tm {int tm_hour; } ;
typedef int greeting ;


 int AF_SP ;
 int NN_REP ;
 int fprintf (int ,char*,char*) ;
 scalar_t__ getpid () ;
 struct tm* localtime (int *) ;
 int nn_close (int) ;
 scalar_t__ nn_connect (int,char const*) ;
 int nn_errno () ;
 int nn_recv (int,char*,int,int ) ;
 int nn_send (int,char*,int,int ) ;
 int nn_socket (int ,int ) ;
 char* nn_strerror (int ) ;
 int sprintf (char*,char*,char*,char*,int) ;
 int stderr ;
 int strlen (char*) ;
 int time (int *) ;

int server(const char *url)
{
    int fd;


    fd = nn_socket (AF_SP, NN_REP);
    if (fd < 0) {
        fprintf (stderr, "nn_socket: %s\n", nn_strerror (nn_errno ()));
        return (-1);
    }





    if (nn_connect (fd, url) < 0) {
        fprintf (stderr, "nn_connect: %s\n", nn_strerror (nn_errno ()));
        nn_close (fd);
        return (-1);
    }







    for (;;) {
        char username[128];
        char greeting[128];
        time_t secs;
        struct tm *now;
        char *daytime;
        int rc;
        char *fmt;

        rc = nn_recv (fd, username, sizeof (username), 0);
        if (rc < 0) {

            fprintf (stderr, "nn_recv: %s\n", nn_strerror (nn_errno ()));
            break;
        }

        secs = time (((void*)0));
        now = localtime (&secs);
        if (now->tm_hour < 12) {
            daytime = "morning";

        } else if (now->tm_hour < 17) {
            daytime = "afternoon";

        } else if (now->tm_hour < 20) {
            daytime = "evening";

        } else {
            daytime = "night";
        }


        if (rc < sizeof (username)) {
            username[rc] = '\0';
        } else {
            username[sizeof (username) - 1] = '\0';
        }

        fmt = "Good %s, %s (from %d).";


        if ((strlen (username) + strlen (daytime) + strlen (fmt)) >=
            sizeof (greeting)) {

            fmt = "I'm sorry, your name is too long.  But good %s anyway.";
        }


        sprintf (greeting, fmt, daytime, username, (int)getpid());

        rc = nn_send (fd, greeting, strlen (greeting), 0);
        if (rc < 0) {




            fprintf (stderr, "nn_send: %s (ignoring)\n",
                nn_strerror (nn_errno ()));
        }
    }

    nn_close (fd);
    return (-1);
}
