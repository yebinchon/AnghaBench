
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rand_priv_bytes_ex (int *,unsigned char*,int) ;

int RAND_priv_bytes(unsigned char *buf, int num)
{
    return rand_priv_bytes_ex(((void*)0), buf, num);
}
