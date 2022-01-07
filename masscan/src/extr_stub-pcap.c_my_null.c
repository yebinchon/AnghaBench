
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UNUSEDPARM (int) ;
 int printf (char*,int ,char*) ;

__attribute__((used)) static void *my_null(int x, ...)
{
 UNUSEDPARM(x);
    printf("%.*s", 0, "a");
    return 0;
}
