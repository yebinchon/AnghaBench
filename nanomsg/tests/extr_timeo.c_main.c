
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int timeo ;
struct nn_stopwatch {int dummy; } ;
typedef int buf ;


 int AF_SP ;
 scalar_t__ ETIMEDOUT ;
 int NN_PAIR ;
 int NN_RCVTIMEO ;
 int NN_SNDTIMEO ;
 int NN_SOL_SOCKET ;
 int errno_assert (int) ;
 scalar_t__ nn_errno () ;
 int nn_recv (int,char*,int,int ) ;
 int nn_send (int,char*,int,int ) ;
 int nn_setsockopt (int,int ,int ,int*,int) ;
 int nn_stopwatch_init (struct nn_stopwatch*) ;
 int nn_stopwatch_term (struct nn_stopwatch*) ;
 int test_close (int) ;
 int test_socket (int ,int ) ;
 int time_assert (int ,int) ;

int main ()
{
    int rc;
    int s;
    int timeo;
    char buf [3];
    struct nn_stopwatch stopwatch;
    uint64_t elapsed;

    s = test_socket (AF_SP, NN_PAIR);

    timeo = 100;
    rc = nn_setsockopt (s, NN_SOL_SOCKET, NN_RCVTIMEO, &timeo, sizeof (timeo));
    errno_assert (rc == 0);
    nn_stopwatch_init (&stopwatch);
    rc = nn_recv (s, buf, sizeof (buf), 0);
    elapsed = nn_stopwatch_term (&stopwatch);
    errno_assert (rc < 0 && nn_errno () == ETIMEDOUT);
    time_assert (elapsed, 100000);

    timeo = 100;
    rc = nn_setsockopt (s, NN_SOL_SOCKET, NN_SNDTIMEO, &timeo, sizeof (timeo));
    errno_assert (rc == 0);
    nn_stopwatch_init (&stopwatch);
    rc = nn_send (s, "ABC", 3, 0);
    elapsed = nn_stopwatch_term (&stopwatch);
    errno_assert (rc < 0 && nn_errno () == ETIMEDOUT);
    time_assert (elapsed, 100000);

    test_close (s);

    return 0;
}
