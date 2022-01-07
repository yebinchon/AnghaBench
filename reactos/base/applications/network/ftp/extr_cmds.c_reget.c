
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int getit (int,char const**,int,char*) ;

void reget(int argc, const char *argv[])
{
 (void) getit(argc, argv, 1, "r+w");
}
