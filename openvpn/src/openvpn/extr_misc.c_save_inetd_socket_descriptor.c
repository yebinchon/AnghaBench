
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INETD_SOCKET_DESCRIPTOR ;
 int M_ERR ;
 int dup (int ) ;
 int inetd_socket_descriptor ;
 int msg (int ,char*,int ) ;
 int set_std_files_to_null (int) ;

void
save_inetd_socket_descriptor(void)
{
    inetd_socket_descriptor = INETD_SOCKET_DESCRIPTOR;
}
