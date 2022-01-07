
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int getchar () ;
 int interactive ;
 int printf (char*) ;
 int rewind (int ) ;
 int stdin ;

__attribute__((used)) static void
myexit(int n)
{
    if (!interactive)
    {

 printf("Press Enter to continue\n");
 rewind(stdin);
 (void)getchar();
    }
    exit(n);
}
