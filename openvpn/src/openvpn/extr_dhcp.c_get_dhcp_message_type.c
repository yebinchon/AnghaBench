
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct dhcp {int dummy; } ;


 scalar_t__ const DHCP_END ;
 scalar_t__ const DHCP_MSG_TYPE ;
 scalar_t__ const DHCP_PAD ;

__attribute__((used)) static int
get_dhcp_message_type(const struct dhcp *dhcp, const int optlen)
{
    const uint8_t *p = (uint8_t *) (dhcp + 1);
    int i;

    for (i = 0; i < optlen; ++i)
    {
        const uint8_t type = p[i];
        const int room = optlen - i;
        if (type == DHCP_END)
        {
            return -1;
        }
        else if (type == DHCP_PAD)
        {
        }
        else if (type == DHCP_MSG_TYPE)
        {
            if (room >= 3)
            {
                if (p[i+1] == 1)
                {
                    return p[i+2];
                }
            }
            return -1;
        }
        else
        {
            if (room >= 2)
            {
                const int len = p[i+1];
                i += (len + 1);
            }
        }
    }
    return -1;
}
