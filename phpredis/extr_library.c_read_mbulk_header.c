
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int line ;
typedef int RedisSock ;


 scalar_t__ IS_ATOMIC (int *) ;
 int atoi (char*) ;
 scalar_t__ redis_sock_gets (int *,char*,int,size_t*) ;
 int redis_sock_set_err (int *,char*,size_t) ;

__attribute__((used)) static int
read_mbulk_header(RedisSock *redis_sock, int *nelem)
{
    char line[4096];
    size_t len;


    if (redis_sock_gets(redis_sock, line, sizeof(line)-1, &len) < 0)
        return -1;

    if (line[0] != '*') {
        if (IS_ATOMIC(redis_sock)) {
            if (line[0] == '-') {
                redis_sock_set_err(redis_sock, line+1, len-1);
            }
        }
        return -1;
    }

    *nelem = atoi(line+1);

    return 0;
}
