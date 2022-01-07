
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int maccalc_do_logical (int,char const**,int ) ;
 int op_and ;

__attribute__((used)) static int maccalc_do_and(int argc, const char *argv[])
{
 return maccalc_do_logical(argc, argv, op_and);
}
