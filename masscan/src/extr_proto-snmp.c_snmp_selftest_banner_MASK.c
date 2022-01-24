#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct BannerOutput {int dummy; } ;
typedef  int /*<<< orphan*/  snmp_response ;

/* Variables and functions */
 int /*<<< orphan*/  PROTO_SNMP ; 
 int /*<<< orphan*/  FUNC0 (struct BannerOutput*) ; 
 int /*<<< orphan*/  FUNC1 (struct BannerOutput*) ; 
 unsigned char* FUNC2 (struct BannerOutput*,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (struct BannerOutput*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (unsigned char const*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char const*,int,struct BannerOutput*,unsigned int*) ; 

__attribute__((used)) static int
FUNC6()
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
    FUNC0(banout);

    /* parse a test packet */
    FUNC5( snmp_response, 
                sizeof(snmp_response),
                banout,
                &request_id
                );
    
    
    if (request_id != 0x26)
        return 1;

    {
        const unsigned char *str = FUNC2(banout, PROTO_SNMP);
        size_t str_length = FUNC3(banout, PROTO_SNMP);
        if (FUNC4(str, "sysObjectID:okidata.1.1.1.297.93.1.27.2.2.1", str_length) != 0)
            return 1;
    }

    FUNC1(banout);

    return 0;
}