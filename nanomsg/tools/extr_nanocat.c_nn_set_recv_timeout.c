
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int millis ;


 int NN_RCVTIMEO ;
 int NN_SOL_SOCKET ;
 int nn_assert_errno (int,char*) ;
 int nn_setsockopt (int,int ,int ,int*,int) ;

void nn_set_recv_timeout (int sock, int millis)
{
    int rc;
    rc = nn_setsockopt (sock, NN_SOL_SOCKET, NN_RCVTIMEO,
                       &millis, sizeof (millis));
    nn_assert_errno (rc == 0, "Can't set recv timeout");
}
