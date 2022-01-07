
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int s_addr; } ;


 int CC_DIGIT ;
 int CC_DOT ;
 int CLEAR (struct in_addr) ;
 int OIA_ERROR ;
 int OIA_HOSTNAME ;
 int OIA_IP ;
 int htonl (unsigned int) ;
 int sscanf (char const*,char*,unsigned int*,unsigned int*,unsigned int*,unsigned int*) ;
 scalar_t__ string_class (char const*,int,int ) ;

int
openvpn_inet_aton(const char *dotted_quad, struct in_addr *addr)
{
    unsigned int a, b, c, d;

    CLEAR(*addr);
    if (sscanf(dotted_quad, "%u.%u.%u.%u", &a, &b, &c, &d) == 4)
    {
        if (a < 256 && b < 256 && c < 256 && d < 256)
        {
            addr->s_addr = htonl(a<<24 | b<<16 | c<<8 | d);
            return OIA_IP;
        }
    }
    if (string_class(dotted_quad, CC_DIGIT|CC_DOT, 0))
    {
        return OIA_ERROR;
    }
    else
    {
        return OIA_HOSTNAME;
    }
}
