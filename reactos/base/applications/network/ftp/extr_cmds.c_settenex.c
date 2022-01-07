
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int settype (int,char**) ;
 char** stype ;

void settenex(int argc, const char *argv[])
{
 stype[1] = "tenex";
 settype(2, stype);
}
