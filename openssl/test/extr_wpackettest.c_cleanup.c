
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WPACKET ;


 int WPACKET_cleanup (int *) ;

__attribute__((used)) static int cleanup(WPACKET *pkt)
{
    WPACKET_cleanup(pkt);
    return 0;
}
