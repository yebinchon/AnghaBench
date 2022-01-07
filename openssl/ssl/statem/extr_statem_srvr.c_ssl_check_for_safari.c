
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int kSafariExtensionsBlock ;
struct TYPE_9__ {int extensions; } ;
struct TYPE_7__ {int is_probably_safari; } ;
struct TYPE_8__ {TYPE_1__ s3; } ;
typedef TYPE_2__ SSL ;
typedef int PACKET ;
typedef TYPE_3__ CLIENTHELLO_MSG ;


 int PACKET_equal (int *,unsigned char const*,size_t) ;
 int PACKET_forward (int *,int) ;
 int PACKET_get_length_prefixed_2 (int *,int *) ;
 int PACKET_get_net_2 (int *,unsigned int*) ;
 scalar_t__ TLS1_2_VERSION ;
 scalar_t__ TLS1_get_client_version (TYPE_2__*) ;
 unsigned int TLSEXT_TYPE_server_name ;

__attribute__((used)) static void ssl_check_for_safari(SSL *s, const CLIENTHELLO_MSG *hello)
{
    static const unsigned char kSafariExtensionsBlock[] = {
        0x00, 0x0a,
        0x00, 0x08,
        0x00, 0x06,
        0x00, 0x17,
        0x00, 0x18,
        0x00, 0x19,

        0x00, 0x0b,
        0x00, 0x02,
        0x01,
        0x00,

        0x00, 0x0d,
        0x00, 0x0c,
        0x00, 0x0a,
        0x05, 0x01,
        0x04, 0x01,
        0x02, 0x01,
        0x04, 0x03,
        0x02, 0x03,
    };

    static const size_t kSafariCommonExtensionsLength = 18;
    unsigned int type;
    PACKET sni, tmppkt;
    size_t ext_len;

    tmppkt = hello->extensions;

    if (!PACKET_forward(&tmppkt, 2)
        || !PACKET_get_net_2(&tmppkt, &type)
        || !PACKET_get_length_prefixed_2(&tmppkt, &sni)) {
        return;
    }

    if (type != TLSEXT_TYPE_server_name)
        return;

    ext_len = TLS1_get_client_version(s) >= TLS1_2_VERSION ?
        sizeof(kSafariExtensionsBlock) : kSafariCommonExtensionsLength;

    s->s3.is_probably_safari = PACKET_equal(&tmppkt, kSafariExtensionsBlock,
                                             ext_len);
}
