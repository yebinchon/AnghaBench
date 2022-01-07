
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WEB_CLIENT_ACL ;


 int WEB_CLIENT_ACL_NONE ;
 int WEB_CLIENT_ACL_SSL_FORCE ;
 int WEB_CLIENT_ACL_SSL_OPTIONAL ;
 char* strchr (char*,char) ;
 int strcmp (char*,char*) ;
 int strncmp (char*,char*,int) ;

WEB_CLIENT_ACL socket_ssl_acl(char *acl) {
    char *ssl = strchr(acl,'^');
    if(ssl) {


        *ssl = '\0';
    }

    return WEB_CLIENT_ACL_NONE;
}
