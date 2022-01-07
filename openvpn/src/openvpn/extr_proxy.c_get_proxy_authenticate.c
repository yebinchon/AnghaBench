
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int socket_descriptor_t ;
typedef int buf ;


 int D_PROXY ;
 int HTTP_AUTH_BASIC ;
 int HTTP_AUTH_DIGEST ;
 int HTTP_AUTH_NONE ;
 int HTTP_AUTH_NTLM ;
 int chomp (char*) ;
 int free (char*) ;
 int msg (int ,char*,char*) ;
 int recv_line (int ,char*,int,int,int,int *,int volatile*) ;
 char* string_alloc (char*,int *) ;
 int strlen (char*) ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static int
get_proxy_authenticate(socket_descriptor_t sd,
                       int timeout,
                       char **data,
                       volatile int *signal_received)
{
    char buf[256];
    int ret = HTTP_AUTH_NONE;
    while (1)
    {
        if (!recv_line(sd, buf, sizeof(buf), timeout, 1, ((void*)0), signal_received))
        {
            free(*data);
            *data = ((void*)0);
            return HTTP_AUTH_NONE;
        }
        chomp(buf);
        if (!strlen(buf))
        {
            return ret;
        }
        if (ret == HTTP_AUTH_NONE && !strncmp(buf, "Proxy-Authenticate: ", 20))
        {
            if (!strncmp(buf+20, "Basic ", 6))
            {
                msg(D_PROXY, "PROXY AUTH BASIC: '%s'", buf);
                *data = string_alloc(buf+26, ((void*)0));
                ret = HTTP_AUTH_BASIC;
            }
        }
    }
}
