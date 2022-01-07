
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int clearerr (int *) ;

__attribute__((used)) static void app_clearerr(FILE *fp)
{
    clearerr(fp);
}
