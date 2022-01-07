
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ sock_t ;
typedef int HANDLE ;


 int FD_CLOEXEC ;
 int F_SETFD ;
 int HANDLE_FLAG_INHERIT ;
 int SetHandleInformation (int ,int ,int ) ;
 int fcntl (scalar_t__,int ,int ) ;

void mg_set_close_on_exec(sock_t sock) {



  fcntl(sock, F_SETFD, FD_CLOEXEC);



}
