
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timeo ;
typedef int resend_ivl ;
typedef int buf ;


 int AF_SP ;
 scalar_t__ EFSM ;
 int NN_RCVTIMEO ;
 int NN_REP ;
 int NN_REQ ;
 int NN_REQ_RESEND_IVL ;
 int NN_SOL_SOCKET ;
 int SOCKET_ADDRESS ;
 int errno_assert (int) ;
 int nn_assert (int) ;
 scalar_t__ nn_errno () ;
 int nn_recv (int,char*,int,int ) ;
 int nn_send (int,char*,int,int ) ;
 int nn_setsockopt (int,int ,int ,int*,int) ;
 int test_bind (int,int ) ;
 int test_close (int) ;
 int test_connect (int,int ) ;
 int test_recv (int,char*) ;
 int test_send (int,char*) ;
 int test_socket (int ,int ) ;

int main ()
{
    int rc;
    int rep1;
    int rep2;
    int req1;
    int req2;
    int resend_ivl;
    char buf [7];
    int timeo;


    rep1 = test_socket (AF_SP, NN_REP);
    test_bind (rep1, SOCKET_ADDRESS);
    req1 = test_socket (AF_SP, NN_REQ);
    test_connect (req1, SOCKET_ADDRESS);
    req2 = test_socket (AF_SP, NN_REQ);
    test_connect (req2, SOCKET_ADDRESS);


    rc = nn_send (rep1, "ABC", 3, 0);
    nn_assert (rc == -1 && nn_errno () == EFSM);
    rc = nn_recv (req1, buf, sizeof (buf), 0);
    nn_assert (rc == -1 && nn_errno () == EFSM);


    test_send (req2, "ABC");
    test_recv (rep1, "ABC");
    test_send (rep1, "ABC");
    test_recv (req2, "ABC");

    test_send (req1, "ABC");
    test_recv (rep1, "ABC");
    test_send (rep1, "ABC");
    test_recv (req1, "ABC");

    test_close (rep1);
    test_close (req1);
    test_close (req2);


    req1 = test_socket (AF_SP, NN_REQ);
    test_bind (req1, SOCKET_ADDRESS);
    rep1 = test_socket (AF_SP, NN_REP);
    test_connect (rep1, SOCKET_ADDRESS);
    rep2 = test_socket (AF_SP, NN_REP);
    test_connect (rep2, SOCKET_ADDRESS);

    test_send (req1, "ABC");
    test_recv (rep1, "ABC");
    test_send (rep1, "ABC");
    test_recv (req1, "ABC");

    test_send (req1, "ABC");
    test_recv (rep2, "ABC");
    test_send (rep2, "ABC");
    test_recv (req1, "ABC");

    test_close (rep2);
    test_close (rep1);
    test_close (req1);


    rep1 = test_socket (AF_SP, NN_REP);
    test_bind (rep1, SOCKET_ADDRESS);
    req1 = test_socket (AF_SP, NN_REQ);
    test_connect (req1, SOCKET_ADDRESS);
    resend_ivl = 100;
    rc = nn_setsockopt (req1, NN_REQ, NN_REQ_RESEND_IVL,
        &resend_ivl, sizeof (resend_ivl));
    errno_assert (rc == 0);

    test_send (req1, "ABC");
    test_recv (rep1, "ABC");

    test_recv (rep1, "ABC");

    test_close (req1);
    test_close (rep1);




    req1 = test_socket (AF_SP, NN_REQ);
    test_connect (req1, SOCKET_ADDRESS);
    test_send (req1, "ABC");

    rep1 = test_socket (AF_SP, NN_REP);
    test_bind (rep1, SOCKET_ADDRESS);
    timeo = 200;
    rc = nn_setsockopt (rep1, NN_SOL_SOCKET, NN_RCVTIMEO,
       &timeo, sizeof (timeo));
    errno_assert (rc == 0);
    test_recv (rep1, "ABC");

    test_close (req1);
    test_close (rep1);




    req1 = test_socket (AF_SP, NN_REQ);
    test_bind (req1, SOCKET_ADDRESS);
    rep1 = test_socket (AF_SP, NN_REP);
    test_connect (rep1, SOCKET_ADDRESS);
    rep2 = test_socket (AF_SP, NN_REP);
    test_connect (rep2, SOCKET_ADDRESS);

    timeo = 200;
    rc = nn_setsockopt (rep1, NN_SOL_SOCKET, NN_RCVTIMEO,
       &timeo, sizeof (timeo));
    errno_assert (rc == 0);
    rc = nn_setsockopt (rep2, NN_SOL_SOCKET, NN_RCVTIMEO,
       &timeo, sizeof (timeo));
    errno_assert (rc == 0);

    test_send (req1, "ABC");

    test_recv (rep1, "ABC");

    test_close (rep1);

    test_recv (rep2, "ABC");

    test_send (rep2, "REPLY");
    test_recv (req1, "REPLY");


    test_close (req1);
    test_close (rep2);



    req1 = test_socket (AF_SP, NN_REQ);
    test_connect (req1, SOCKET_ADDRESS);
    test_send (req1, "ABC");
    test_send (req1, "DEF");

    rep1 = test_socket (AF_SP, NN_REP);
    test_bind (rep1, SOCKET_ADDRESS);
    timeo = 100;
    test_recv (rep1, "DEF");

    test_close (req1);
    test_close (rep1);

    return 0;
}
