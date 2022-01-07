
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int BUF_MEM_FLAG_SECURE ;
 int mem_init (int *,int ) ;

__attribute__((used)) static int secmem_new(BIO *bi)
{
    return mem_init(bi, BUF_MEM_FLAG_SECURE);
}
