
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int optval ;


 int setsockopt (int,int,int,void*,int) ;

__attribute__((used)) static int mbedtls_setsockopt(int sock_id, int level, int optname, int optval)
{
 return setsockopt(sock_id, level, optname, (void*)&optval, sizeof(optval));
}
