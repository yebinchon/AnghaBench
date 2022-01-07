
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int socklen_t ;


 int SOL_SOCKET ;
 int SO_SNDBUF ;
 scalar_t__ getsockopt (int,int ,int ,void*,int*) ;

__attribute__((used)) static int
socket_get_sndbuf(int sd)
{
    return 0;
}
