
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
typedef int opt ;


 int AF_SP ;
 int ETIMEDOUT ;
 int NN_PAIR ;
 int NN_RCVTIMEO ;
 int NN_SOL_SOCKET ;
 int NN_WS ;
 int NN_WS_MSG_TYPE ;
 int NN_WS_MSG_TYPE_TEXT ;
 int socket_address ;
 int strcpy (char*,char*) ;
 int test_bind (int,int ) ;
 int test_close (int) ;
 int test_connect (int,int ) ;
 int test_drop (int,int ) ;
 int test_recv (int,char*) ;
 int test_send (int,char*) ;
 int test_setsockopt (int,int ,int ,int*,int) ;
 int test_socket (int ,int ) ;

void test_text ()
{
    int sb;
    int sc;
    int opt;
    uint8_t bad[20];


    sb = test_socket (AF_SP, NN_PAIR);
    sc = test_socket (AF_SP, NN_PAIR);

    opt = NN_WS_MSG_TYPE_TEXT;
    test_setsockopt (sb, NN_WS, NN_WS_MSG_TYPE, &opt, sizeof (opt));
    opt = NN_WS_MSG_TYPE_TEXT;
    test_setsockopt (sc, NN_WS, NN_WS_MSG_TYPE, &opt, sizeof (opt));
    opt = 500;
    test_setsockopt (sb, NN_SOL_SOCKET, NN_RCVTIMEO, &opt, sizeof (opt));

    test_bind (sb, socket_address);
    test_connect (sc, socket_address);

    test_send (sc, "GOOD");
    test_recv (sb, "GOOD");


    strcpy ((char *)bad, "BAD.");
    bad[2] = (char)0xDD;
    test_send (sc, (char *)bad);


    test_drop (sb, ETIMEDOUT);

    test_close (sb);
    test_close (sc);

    return;
}
