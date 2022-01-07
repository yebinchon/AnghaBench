
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int dummy; } ;


 scalar_t__ inet_aton (char*,struct in_addr*) ;
 int note (char*,char*) ;
 char* strtok (char*,char*) ;

int
ipv4addrs(char * buf)
{
    char *tmp;
    struct in_addr jnk;
    int i = 0;

    note("Input: %s", buf);

    do {
        tmp = strtok(buf, " ");
        note("got %s", tmp);
  if( tmp && inet_aton(tmp, &jnk) ) i++;
        buf = ((void*)0);
    } while( tmp );

    return (i);
}
