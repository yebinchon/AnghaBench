
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int dbNumber; } ;
typedef TYPE_1__ RedisSock ;


 int efree (char*) ;
 char* redis_sock_read (TYPE_1__*,int*) ;
 scalar_t__ redis_sock_write (TYPE_1__*,char*,int) ;
 int redis_spprintf (TYPE_1__*,int *,char**,char*,char*,int ) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static int reselect_db(RedisSock *redis_sock) {
    char *cmd, *response;
    int cmd_len, response_len;

    cmd_len = redis_spprintf(redis_sock, ((void*)0), &cmd, "SELECT", "d",
                             redis_sock->dbNumber);

    if (redis_sock_write(redis_sock, cmd, cmd_len) < 0) {
        efree(cmd);
        return -1;
    }

    efree(cmd);

    if ((response = redis_sock_read(redis_sock, &response_len)) == ((void*)0)) {
        return -1;
    }

    if (strncmp(response, "+OK", 3)) {
        efree(response);
        return -1;
    }

    efree(response);
    return 0;
}
