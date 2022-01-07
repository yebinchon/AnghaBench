
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int FILE ;


 int _fseeki64 (int *,int ,int) ;
 int fseeko (int *,int ,int) ;

int os_fseeki64(FILE *file, int64_t offset, int origin)
{



 return fseeko(file, offset, origin);

}
