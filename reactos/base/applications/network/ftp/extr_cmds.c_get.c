
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int getit (int,char const**,int ,char*) ;
 scalar_t__ restart_point ;

void get(int argc, const char *argv[])
{
 (void) getit(argc, argv, 0, restart_point ? "r+w" : "w" );
}
