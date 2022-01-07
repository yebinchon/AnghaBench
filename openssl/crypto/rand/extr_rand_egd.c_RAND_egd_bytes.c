
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RAND_query_egd_bytes (char const*,int *,int) ;
 int RAND_status () ;

int RAND_egd_bytes(const char *path, int bytes)
{
    int num;

    num = RAND_query_egd_bytes(path, ((void*)0), bytes);
    if (num < 0)
        return -1;
    if (RAND_status() != 1)
        return -1;
    return num;
}
