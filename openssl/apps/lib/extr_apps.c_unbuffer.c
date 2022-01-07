
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int setbuf (int *,int *) ;

void unbuffer(FILE *fp)
{
    setbuf(fp, ((void*)0));



}
