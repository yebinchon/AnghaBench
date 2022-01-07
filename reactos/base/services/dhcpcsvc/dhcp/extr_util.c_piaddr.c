
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {int sin_addr; } ;
struct iaddr {int iabuf; } ;


 char* inet_ntoa (int ) ;
 int memcpy (int *,int ,int) ;

char *piaddr( struct iaddr addr ) {
    struct sockaddr_in sa;
    memcpy(&sa.sin_addr,addr.iabuf,sizeof(sa.sin_addr));
    return inet_ntoa( sa.sin_addr );
}
