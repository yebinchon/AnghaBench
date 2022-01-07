
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int FILE ;


 int _ftelli64 (int *) ;
 int ftello (int *) ;

int64_t os_ftelli64(FILE *file)
{



 return ftello(file);

}
