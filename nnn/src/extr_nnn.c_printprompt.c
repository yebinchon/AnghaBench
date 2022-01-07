
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int addstr (char const*) ;
 int clearprompt () ;

__attribute__((used)) static void printprompt(const char *str)
{
 clearprompt();
 addstr(str);
}
