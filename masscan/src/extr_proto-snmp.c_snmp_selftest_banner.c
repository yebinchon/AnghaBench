
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct BannerOutput {int dummy; } ;
typedef int snmp_response ;


 int PROTO_SNMP ;
 int banout_init (struct BannerOutput*) ;
 int banout_release (struct BannerOutput*) ;
 unsigned char* banout_string (struct BannerOutput*,int ) ;
 size_t banout_string_length (struct BannerOutput*,int ) ;
 scalar_t__ memcmp (unsigned char const*,char*,size_t) ;
 int snmp_parse (unsigned char const*,int,struct BannerOutput*,unsigned int*) ;

__attribute__((used)) static int
snmp_selftest_banner()
{
    static const unsigned char snmp_response[] = {
        0x30, 0x39,
         0x02, 0x01, 0x00,
         0x04, 0x06, 0x70, 0x75, 0x62, 0x6C, 0x69, 0x63,
         0xA2, 0x2C,
           0x02, 0x01, 0x26,
           0x02, 0x01, 0x00,
           0x02, 0x01, 0x00,
           0x30, 0x21,
            0x30, 0x1F,
              0x06, 0x09,
                0x2B, 0x06, 0x01, 0x80, 0x02, 0x01, 0x01, 0x02, 0x00,
              0x06, 0x12,
                0x2B, 0x06, 0x01, 0x04, 0x01, 0x8F, 0x51, 0x01, 0x01, 0x01, 0x82, 0x29, 0x5D, 0x01, 0x1B, 0x02, 0x02, 0x01,
    };
    unsigned request_id = 0;
    struct BannerOutput banout[1];
    banout_init(banout);


    snmp_parse( snmp_response,
                sizeof(snmp_response),
                banout,
                &request_id
                );


    if (request_id != 0x26)
        return 1;

    {
        const unsigned char *str = banout_string(banout, PROTO_SNMP);
        size_t str_length = banout_string_length(banout, PROTO_SNMP);
        if (memcmp(str, "sysObjectID:okidata.1.1.1.297.93.1.27.2.2.1", str_length) != 0)
            return 1;
    }

    banout_release(banout);

    return 0;
}
