
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int ferror (int *) ;

__attribute__((used)) static int app_ferror(FILE *fp)
{
    return ferror(fp);
}
