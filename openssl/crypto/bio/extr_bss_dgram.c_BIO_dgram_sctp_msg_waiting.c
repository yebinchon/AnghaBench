
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int BIO_CTRL_DGRAM_SCTP_MSG_WAITING ;
 scalar_t__ BIO_ctrl (int *,int ,int ,int *) ;

int BIO_dgram_sctp_msg_waiting(BIO *b)
{
    return (int)BIO_ctrl(b, BIO_CTRL_DGRAM_SCTP_MSG_WAITING, 0, ((void*)0));
}
