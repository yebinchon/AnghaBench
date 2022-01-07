
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timeo ;
struct nn_thread {int dummy; } ;
typedef int maxttl ;


 int AF_SP ;
 int AF_SP_RAW ;
 scalar_t__ EINVAL ;
 int ETIMEDOUT ;
 int NN_MAXTTL ;
 int NN_RCVTIMEO ;
 int NN_RESPONDENT ;
 int NN_SOL_SOCKET ;
 int NN_SURVEYOR ;
 void* dev0 ;
 void* dev1 ;
 int device ;
 int get_test_port (int,char const**) ;
 int nn_assert (int) ;
 scalar_t__ nn_errno () ;
 int nn_getsockopt (int,int ,int ,int*,size_t*) ;
 int nn_setsockopt (int,int ,int ,int*,int) ;
 int nn_sleep (int) ;
 int nn_term () ;
 int nn_thread_init (struct nn_thread*,int ,int *) ;
 int nn_thread_term (struct nn_thread*) ;
 int socket_address_a ;
 int socket_address_b ;
 int test_addr_from (int ,char*,char*,int) ;
 int test_bind (void*,int ) ;
 int test_close (int) ;
 int test_connect (int,int ) ;
 int test_drop (int,int ) ;
 int test_recv (int,char*) ;
 int test_send (int,char*) ;
 int test_setsockopt (int,int ,int ,int*,int) ;
 void* test_socket (int ,int ) ;

int main (int argc, const char *argv[])
{
    int end0;
    int end1;
    struct nn_thread thread1;
    int timeo;
    int maxttl;
    size_t sz;
    int rc;

    int port = get_test_port(argc, argv);

    test_addr_from(socket_address_a, "tcp", "127.0.0.1", port);
    test_addr_from(socket_address_b, "tcp", "127.0.0.1", port + 1);


    dev0 = test_socket (AF_SP_RAW, NN_RESPONDENT);
    dev1 = test_socket (AF_SP_RAW, NN_SURVEYOR);

    test_bind (dev0, socket_address_a);
    test_bind (dev1, socket_address_b);


    nn_thread_init (&thread1, device, ((void*)0));

    end0 = test_socket (AF_SP, NN_SURVEYOR);
    end1 = test_socket (AF_SP, NN_RESPONDENT);


    test_connect (end0, socket_address_a);
    test_connect (end1, socket_address_b);


    nn_sleep (100);


    timeo = 100;
    test_setsockopt (end0, NN_SOL_SOCKET, NN_RCVTIMEO, &timeo, sizeof (timeo));
    timeo = 100;
    test_setsockopt (end1, NN_SOL_SOCKET, NN_RCVTIMEO, &timeo, sizeof (timeo));


    sz = sizeof (maxttl);
    maxttl = -1;
    rc = nn_getsockopt(end1, NN_SOL_SOCKET, NN_MAXTTL, &maxttl, &sz);
    nn_assert (rc == 0);
    nn_assert (sz == sizeof (maxttl));
    nn_assert (maxttl == 8);


    maxttl = -1;
    rc = nn_setsockopt(end1, NN_SOL_SOCKET, NN_MAXTTL, &maxttl, sizeof (maxttl));
    nn_assert (rc < 0 && nn_errno () == EINVAL);
    nn_assert (maxttl == -1);
    maxttl = 0;
    rc = nn_setsockopt(end1, NN_SOL_SOCKET, NN_MAXTTL, &maxttl, sizeof (maxttl));
    nn_assert (rc < 0 && nn_errno () == EINVAL);
    nn_assert (maxttl == 0);


    maxttl = 8;
    rc = nn_setsockopt(end1, NN_SOL_SOCKET, NN_MAXTTL, &maxttl, 1);
    nn_assert (rc < 0 && nn_errno () == EINVAL);
    nn_assert (maxttl == 8);


    test_send (end0, "SURVEY");
    test_recv (end1, "SURVEY");


    test_send (end1, "REPLYXYZ");
    test_recv (end0, "REPLYXYZ");


    maxttl = 1;
    test_setsockopt (end0, NN_SOL_SOCKET, NN_MAXTTL, &maxttl, sizeof (maxttl));
    test_setsockopt (end1, NN_SOL_SOCKET, NN_MAXTTL, &maxttl, sizeof (maxttl));

    test_send (end0, "DROPTHIS");
    test_drop (end1, ETIMEDOUT);

    maxttl = 2;
    test_setsockopt (end0, NN_SOL_SOCKET, NN_MAXTTL, &maxttl, sizeof (maxttl));
    test_setsockopt (end1, NN_SOL_SOCKET, NN_MAXTTL, &maxttl, sizeof (maxttl));
    test_send (end0, "DONTDROP");
    test_recv (end1, "DONTDROP");


    test_close (end0);
    test_close (end1);


    nn_term ();
    nn_thread_term (&thread1);

    return 0;
}
