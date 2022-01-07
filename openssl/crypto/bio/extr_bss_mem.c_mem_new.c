
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int mem_init (int *,long) ;

__attribute__((used)) static int mem_new(BIO *bi)
{
    return mem_init(bi, 0L);
}
