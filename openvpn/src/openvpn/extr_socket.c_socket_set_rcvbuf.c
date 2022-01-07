
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int size ;


 int M_WARN ;
 int SOL_SOCKET ;
 int SO_RCVBUF ;
 int msg (int ,char*,int) ;
 scalar_t__ setsockopt (int,int ,int ,void*,int) ;

__attribute__((used)) static bool
socket_set_rcvbuf(int sd, int size)
{
}
