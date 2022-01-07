
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int FILE ;


 int _ftelli64 (int *) ;
 int ftello (int *) ;
 int ftello64 (int *) ;

__attribute__((used)) static int64_t ftell_x(FILE *fp)
{





    return ftello(fp);

}
