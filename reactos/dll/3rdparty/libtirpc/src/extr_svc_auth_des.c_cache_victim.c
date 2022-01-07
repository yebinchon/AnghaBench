
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AUTHDES_CACHESZ ;
 short* authdes_lru ;

__attribute__((used)) static short
cache_victim()
{
 return (authdes_lru[AUTHDES_CACHESZ-1]);
}
