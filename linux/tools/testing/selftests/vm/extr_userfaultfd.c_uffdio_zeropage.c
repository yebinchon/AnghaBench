
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __uffdio_zeropage (int,unsigned long,int) ;

__attribute__((used)) static int uffdio_zeropage(int ufd, unsigned long offset)
{
 return __uffdio_zeropage(ufd, offset, 0);
}
