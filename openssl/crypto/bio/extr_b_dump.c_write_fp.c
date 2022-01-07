
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UP_fwrite (void const*,size_t,int,void*) ;

__attribute__((used)) static int write_fp(const void *data, size_t len, void *fp)
{
    return UP_fwrite(data, len, 1, fp);
}
