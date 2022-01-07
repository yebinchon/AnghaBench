
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF_INET ;
 int SOCK_DGRAM ;
 int ServerSocket ;
 int socket (int ,int ,int ) ;

void SocketInit() {
    ServerSocket = socket( AF_INET, SOCK_DGRAM, 0 );
}
