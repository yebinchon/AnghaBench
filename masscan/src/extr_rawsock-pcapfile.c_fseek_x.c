
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int FILE ;


 int _fseeki64 (int *,int ,int) ;
 int fseeko (int *,int ,int) ;
 int fseeko64 (int *,int ,int) ;

__attribute__((used)) static int fseek_x(FILE *fp, int64_t offset, int origin)
{





    return fseeko(fp, offset, origin);

}
