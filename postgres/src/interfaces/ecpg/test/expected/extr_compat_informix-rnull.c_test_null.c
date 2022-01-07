
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,int) ;
 int risnull (int,char*) ;

__attribute__((used)) static void
test_null(int type, char *ptr)
{
 printf("null: %d\n", risnull(type, ptr));
}
