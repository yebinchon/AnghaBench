
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {unsigned int s_addr; } ;


 char* inet_ntoa (struct in_addr) ;
 int strncpy (char*,char*,int) ;

char *toIPAddressString(unsigned int addr, char string[16])
{
    struct in_addr iAddr;

    iAddr.s_addr = addr;

    if (string)
        strncpy(string, inet_ntoa(iAddr), 16);

    return inet_ntoa(iAddr);
}
