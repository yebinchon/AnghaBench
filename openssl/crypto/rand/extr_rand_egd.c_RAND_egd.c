
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RAND_egd_bytes (char const*,int) ;

int RAND_egd(const char *path)
{
    return RAND_egd_bytes(path, 255);
}
