
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int deadline ;
typedef int buf ;


 int AF_SP ;
 scalar_t__ EFSM ;
 scalar_t__ ETIMEDOUT ;
 int NN_RESPONDENT ;
 int NN_SURVEYOR ;
 int NN_SURVEYOR_DEADLINE ;
 int SOCKET_ADDRESS ;
 int errno_assert (int) ;
 scalar_t__ nn_errno () ;
 int nn_recv (int,char*,int,int ) ;
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
    int surveyor;
    int respondent1;
    int respondent2;
    int respondent3;
    int deadline;
    char buf [7];


    surveyor = test_socket (AF_SP, NN_SURVEYOR);
    deadline = 500;
    rc = nn_setsockopt (surveyor, NN_SURVEYOR, NN_SURVEYOR_DEADLINE,
        &deadline, sizeof (deadline));
    errno_assert (rc == 0);
    test_bind (surveyor, SOCKET_ADDRESS);
    respondent1 = test_socket (AF_SP, NN_RESPONDENT);
    test_connect (respondent1, SOCKET_ADDRESS);
    respondent2 = test_socket (AF_SP, NN_RESPONDENT);
    test_connect (respondent2, SOCKET_ADDRESS);
    respondent3 = test_socket (AF_SP, NN_RESPONDENT);
    test_connect (respondent3, SOCKET_ADDRESS);


    rc = nn_recv (surveyor, buf, sizeof (buf), 0);
    errno_assert (rc == -1 && nn_errno () == EFSM);


    test_send (surveyor, "ABC");


    test_recv (respondent1, "ABC");
    test_send (respondent1, "DEF");


    test_recv (respondent2, "ABC");
    test_send (respondent2, "DEF");


    test_recv (surveyor, "DEF");
    test_recv (surveyor, "DEF");


    rc = nn_recv (surveyor, buf, sizeof (buf), 0);
    errno_assert (rc == -1 && nn_errno () == ETIMEDOUT);


    test_recv (respondent3, "ABC");
    test_send (respondent3, "GHI");


    test_send (surveyor, "ABC");


    rc = nn_recv (surveyor, buf, sizeof (buf), 0);
    errno_assert (rc == -1 && nn_errno () == ETIMEDOUT);


    rc = nn_recv (surveyor, buf, sizeof (buf), 0);
    errno_assert (rc == -1 && nn_errno () == EFSM);

    test_close (surveyor);
    test_close (respondent1);
    test_close (respondent2);
    test_close (respondent3);

    return 0;
}
