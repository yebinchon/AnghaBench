
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PACKET ;
typedef int BIO ;


 int BIO_clear_retry_flags (int *) ;
 int * BIO_next (int *) ;
 int BIO_set_retry_write (int *) ;
 scalar_t__ BIO_should_write (int *) ;
 int BIO_write (int *,char const*,int) ;
 int PACKET_buf_init (int *,unsigned char const*,int) ;
 int PACKET_copy_bytes (int *,int ,scalar_t__) ;
 int PACKET_data (int *) ;
 int PACKET_forward (int *,int) ;
 int PACKET_get_1 (int *,unsigned int*) ;
 int PACKET_get_length_prefixed_1 (int *,int *) ;
 int PACKET_get_length_prefixed_2 (int *,int *) ;
 int PACKET_get_length_prefixed_3 (int *,int *) ;
 int PACKET_get_net_2 (int *,unsigned int*) ;
 scalar_t__ PACKET_remaining (int *) ;
 unsigned int SSL3_MT_CLIENT_HELLO ;
 unsigned int SSL3_MT_SERVER_HELLO ;
 unsigned int SSL3_RT_APPLICATION_DATA ;
 unsigned int SSL3_RT_CHANGE_CIPHER_SPEC ;
 unsigned int SSL3_RT_HANDSHAKE ;
 unsigned int TLS1_2_VERSION ;
 unsigned int TLS1_VERSION ;
 int badccs ;
 int badsessid ;
 int badvers ;
 int cappdataseen ;
 int ccsaftersh ;
 int ccsbeforesh ;
 int chseen ;
 int chsessid ;
 scalar_t__ chsessidlen ;
 scalar_t__ memcmp (int ,int ,scalar_t__) ;
 int * s_to_c_fbio ;
 int sappdataseen ;
 int sccsseen ;
 int shseen ;

__attribute__((used)) static int watchccs_write(BIO *bio, const char *in, int inl)
{
    int ret = 0;
    BIO *next = BIO_next(bio);
    PACKET pkt, msg, msgbody, sessionid;
    unsigned int rectype, recvers, msgtype, expectedrecvers;

    if (inl <= 0)
        return 0;
    if (next == ((void*)0))
        return 0;

    BIO_clear_retry_flags(bio);

    if (!PACKET_buf_init(&pkt, (const unsigned char *)in, inl))
        return 0;


    while (PACKET_remaining(&pkt)) {
        if (!PACKET_get_1(&pkt, &rectype)
                || !PACKET_get_net_2(&pkt, &recvers)
                || !PACKET_get_length_prefixed_2(&pkt, &msg))
            return 0;

        expectedrecvers = TLS1_2_VERSION;

        if (rectype == SSL3_RT_HANDSHAKE) {
            if (!PACKET_get_1(&msg, &msgtype)
                    || !PACKET_get_length_prefixed_3(&msg, &msgbody))
                return 0;
            if (msgtype == SSL3_MT_CLIENT_HELLO) {
                chseen++;





                if (!PACKET_forward(&msgbody, 34)
                        || !PACKET_get_length_prefixed_1(&msgbody, &sessionid))
                    return 0;

                if (chseen == 1) {
                    expectedrecvers = TLS1_VERSION;


                    chsessidlen = PACKET_remaining(&sessionid);
                    if (!PACKET_copy_bytes(&sessionid, chsessid, chsessidlen))
                        return 0;
                } else {




                    if (PACKET_remaining(&sessionid) != chsessidlen
                            || (chsessidlen > 0
                                && memcmp(chsessid, PACKET_data(&sessionid),
                                          chsessidlen) != 0))
                        badsessid = 1;
                }
            } else if (msgtype == SSL3_MT_SERVER_HELLO) {
                shseen++;




                if (!PACKET_forward(&msgbody, 34)
                        || !PACKET_get_length_prefixed_1(&msgbody, &sessionid))
                    return 0;





                if (PACKET_remaining(&sessionid) != chsessidlen
                        || (chsessidlen > 0
                            && memcmp(chsessid, PACKET_data(&sessionid),
                                      chsessidlen) != 0))
                    badsessid = 1;
            }
        } else if (rectype == SSL3_RT_CHANGE_CIPHER_SPEC) {
            if (bio == s_to_c_fbio) {





                if (!sappdataseen
                        && chseen == 1
                        && shseen == 1
                        && !sccsseen)
                    sccsseen = 1;
                else
                    badccs = 1;
            } else if (!cappdataseen) {




                if (shseen == 1 && !ccsaftersh)
                    ccsaftersh = 1;
                else if (shseen == 0 && !ccsbeforesh)
                    ccsbeforesh = 1;
                else
                    badccs = 1;
            } else {
                badccs = 1;
            }
        } else if(rectype == SSL3_RT_APPLICATION_DATA) {
            if (bio == s_to_c_fbio)
                sappdataseen = 1;
            else
                cappdataseen = 1;
        }
        if (recvers != expectedrecvers)
            badvers = 1;
    }

    ret = BIO_write(next, in, inl);
    if (ret <= 0 && BIO_should_write(next))
        BIO_set_retry_write(bio);

    return ret;
}
