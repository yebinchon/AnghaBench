
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {long long reply_len; int line_reply; TYPE_2__* cmd_sock; int redirections; } ;
typedef TYPE_1__ redisCluster ;
typedef int inbuf ;
struct TYPE_10__ {int stream; } ;
typedef int REDIS_REPLY_TYPE ;


 int CLUSTER_CLEAR_ERROR (TYPE_1__*) ;
 int CLUSTER_CLEAR_REPLY (TYPE_1__*) ;
 int EOF ;
 scalar_t__ IS_ASK (char*) ;
 int IS_MOVED (char*) ;
 int TYPE_ERR ;
 int TYPE_LINE ;
 int cluster_set_err (TYPE_1__*,char*,scalar_t__) ;
 scalar_t__ cluster_set_redirection (TYPE_1__*,char*,int) ;
 int php_stream_getc (int ) ;
 int php_stream_gets (int ,char*,int) ;
 int redis_check_eof (TYPE_2__*,int) ;
 scalar_t__ redis_sock_gets (TYPE_2__*,int ,int,size_t*) ;
 scalar_t__ strlen (char*) ;
 long long strtol (int ,int *,int) ;

__attribute__((used)) static int cluster_check_response(redisCluster *c, REDIS_REPLY_TYPE *reply_type
                                 )
{
    size_t sz;


    CLUSTER_CLEAR_ERROR(c);
    CLUSTER_CLEAR_REPLY(c);

    if (-1 == redis_check_eof(c->cmd_sock, 1) ||
       EOF == (*reply_type = php_stream_getc(c->cmd_sock->stream)))
    {
        return -1;
    }


    if (*reply_type == TYPE_ERR) {
        char inbuf[4096];
        int moved;


        if (!php_stream_gets(c->cmd_sock->stream, inbuf, sizeof(inbuf))) {
            return -1;
        }


        if ((moved = IS_MOVED(inbuf)) || IS_ASK(inbuf)) {

            c->redirections++;

            if (cluster_set_redirection(c,inbuf,moved) < 0) {
                return -1;
            }


            return 1;
        } else {

            cluster_set_err(c, inbuf, strlen(inbuf)-2);
            return 0;
        }
    }


    if (redis_sock_gets(c->cmd_sock,c->line_reply,sizeof(c->line_reply),
                       &sz) < 0)
    {
        return -1;
    }


    if (*reply_type != TYPE_LINE) {
        c->reply_len = strtol(c->line_reply, ((void*)0), 10);
    } else {
        c->reply_len = (long long)sz;
    }


    CLUSTER_CLEAR_ERROR(c);
    return 0;
}
