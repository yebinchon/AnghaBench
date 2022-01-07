
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RedisSock ;


 int FAILURE ;
 int REDIS_SPPRINTF (char**,char*,char*) ;
 int SUCCESS ;
 int efree (char*) ;
 char* redis_sock_read (int *,int*) ;
 scalar_t__ redis_sock_write (int *,char*,int) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static int
redis_send_discard(RedisSock *redis_sock)
{
    int result = FAILURE;
    char *cmd, *resp;
    int resp_len, cmd_len;


    cmd_len = REDIS_SPPRINTF(&cmd, "DISCARD", "");


    if (redis_sock_write(redis_sock, cmd, cmd_len) >= 0 &&
       (resp = redis_sock_read(redis_sock,&resp_len)) != ((void*)0))
    {

        result = (resp_len == 3 && strncmp(resp,"+OK", 3) == 0) ? SUCCESS:FAILURE;


        efree(resp);
    }


    efree(cmd);


    return result;
}
