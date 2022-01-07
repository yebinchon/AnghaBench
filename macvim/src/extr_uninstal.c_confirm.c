
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fflush (int ) ;
 int scanf (char*,char*) ;
 int stdout ;
 char toupper (char) ;

__attribute__((used)) static int
confirm(void)
{
    char answer[10];

    fflush(stdout);
    return (scanf(" %c", answer) == 1 && toupper(answer[0]) == 'Y');
}
