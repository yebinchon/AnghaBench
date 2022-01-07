
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 int dtls1_clear_received_buffer (int *) ;
 int dtls1_clear_sent_buffer (int *) ;

__attribute__((used)) static void dtls1_clear_queues(SSL *s)
{
    dtls1_clear_received_buffer(s);
    dtls1_clear_sent_buffer(s);
}
