
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_thread {int dummy; } ;


 int AF_SP ;
 scalar_t__ ETERM ;
 int NN_PAIR ;
 int errno_assert (int) ;
 int nn_assert (int) ;
 scalar_t__ nn_errno () ;
 int nn_sleep (int) ;
 int nn_socket (int ,int ) ;
 int nn_term () ;
 int nn_thread_init (struct nn_thread*,int ,int *) ;
 int nn_thread_term (struct nn_thread*) ;
 int test_close (int) ;
 int test_socket (int ,int ) ;
 int worker ;

int main ()
{
    int rc;
    int s;
    struct nn_thread thread;


    s = test_socket (AF_SP, NN_PAIR);
    test_close (s);


    nn_thread_init (&thread, worker, ((void*)0));
    nn_sleep (100);
    nn_term ();


    rc = nn_socket (AF_SP, NN_PAIR);
    nn_assert (rc == -1);
    errno_assert (nn_errno () == ETERM);


    nn_thread_term (&thread);

    return 0;
}
