
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int Unix_socket_permissions ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static const char *
show_unix_socket_permissions(void)
{
 static char buf[12];

 snprintf(buf, sizeof(buf), "%04o", Unix_socket_permissions);
 return buf;
}
