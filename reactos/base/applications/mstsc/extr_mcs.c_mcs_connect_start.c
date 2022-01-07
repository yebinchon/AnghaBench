
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int RD_BOOL ;


 int iso_connect (char*,char*,char*,char*,int ,int *) ;

RD_BOOL
mcs_connect_start(char *server, char *username, char *domain, char *password,
    RD_BOOL reconnect, uint32 * selected_protocol)
{
 return iso_connect(server, username, domain, password, reconnect, selected_protocol);
}
