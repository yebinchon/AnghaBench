
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int redir_host_len; unsigned short redir_slot; unsigned short redir_port; int redir_host; int redir_type; } ;
typedef TYPE_1__ redisCluster ;


 int ASK_LEN ;
 int MOVED_LEN ;
 int REDIR_ASK ;
 int REDIR_MOVED ;
 scalar_t__ atoi (char*) ;
 char* strchr (char*,char) ;
 int strncpy (int ,char*,int) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static int cluster_set_redirection(redisCluster* c, char *msg, int moved)
{
    char *host, *port;


    msg += moved ? MOVED_LEN : ASK_LEN;


    if ((host = strchr(msg, ' ')) == ((void*)0)) return -1;
    *host++ = '\0';


    if ((port = strrchr(host, ':')) == ((void*)0)) return -1;
    *port++ = '\0';


    c->redir_type = moved ? REDIR_MOVED : REDIR_ASK;
    strncpy(c->redir_host, host, sizeof(c->redir_host) - 1);
    c->redir_host_len = port - host - 1;
    c->redir_slot = (unsigned short)atoi(msg);
    c->redir_port = (unsigned short)atoi(port);

    return 0;
}
