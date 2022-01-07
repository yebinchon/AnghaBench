
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isolation_init ;
 int isolation_start_test ;
 int regression_main (int,char**,int ,int ) ;

int
main(int argc, char *argv[])
{
 return regression_main(argc, argv, isolation_init, isolation_start_test);
}
