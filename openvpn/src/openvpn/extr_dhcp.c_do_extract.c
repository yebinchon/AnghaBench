
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct dhcp {int dummy; } ;
typedef scalar_t__ in_addr_t ;


 scalar_t__ const DHCP_END ;
 scalar_t__ const DHCP_PAD ;
 scalar_t__ const DHCP_ROUTER ;
 int memcpy (scalar_t__*,scalar_t__*,int) ;
 int memmove (scalar_t__*,scalar_t__*,int const) ;
 int memset (scalar_t__*,scalar_t__ const,int const) ;
 scalar_t__ ntohl (scalar_t__) ;

__attribute__((used)) static in_addr_t
do_extract(struct dhcp *dhcp, int optlen)
{
    uint8_t *p = (uint8_t *) (dhcp + 1);
    int i;
    in_addr_t ret = 0;

    for (i = 0; i < optlen; )
    {
        const uint8_t type = p[i];
        const int room = optlen - i;
        if (type == DHCP_END)
        {
            break;
        }
        else if (type == DHCP_PAD)
        {
            ++i;
        }
        else if (type == DHCP_ROUTER)
        {
            if (room >= 2)
            {
                const int len = p[i+1];
                if (len <= (room-2))
                {

                    if (!ret && len >= 4 && (len & 3) == 0)
                    {
                        memcpy(&ret, p+i+2, 4);
                        ret = ntohl(ret);
                    }
                    {

                        uint8_t *dest = p + i;
                        const int owlen = len + 2;
                        uint8_t *src = dest + owlen;
                        uint8_t *end = p + optlen;
                        const int movlen = end - src;
                        if (movlen > 0)
                        {
                            memmove(dest, src, movlen);
                        }
                        memset(end - owlen, DHCP_PAD, owlen);
                    }
                }
                else
                {
                    break;
                }
            }
            else
            {
                break;
            }
        }
        else
        {
            if (room >= 2)
            {
                const int len = p[i+1];
                i += (len + 2);
            }
            else
            {
                break;
            }
        }
    }
    return ret;
}
