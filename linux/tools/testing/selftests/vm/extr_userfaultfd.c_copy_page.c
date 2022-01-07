
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __copy_page (int,unsigned long,int) ;

__attribute__((used)) static int copy_page(int ufd, unsigned long offset)
{
 return __copy_page(ufd, offset, 0);
}
