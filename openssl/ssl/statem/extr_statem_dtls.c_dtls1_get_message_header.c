
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hm_header_st {int frag_len; int frag_off; int seq; int msg_len; int type; } ;


 int memset (struct hm_header_st*,int ,int) ;
 int n2l3 (unsigned char*,int ) ;
 int n2s (unsigned char*,int ) ;

void dtls1_get_message_header(unsigned char *data, struct hm_header_st *msg_hdr)
{
    memset(msg_hdr, 0, sizeof(*msg_hdr));
    msg_hdr->type = *(data++);
    n2l3(data, msg_hdr->msg_len);

    n2s(data, msg_hdr->seq);
    n2l3(data, msg_hdr->frag_off);
    n2l3(data, msg_hdr->frag_len);
}
