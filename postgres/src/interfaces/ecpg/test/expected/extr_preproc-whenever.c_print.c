
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char const*) ;
 int sqlprint () ;
 int stderr ;

__attribute__((used)) static void print(const char *msg)
{
        fprintf(stderr, "Error in statement '%s':\n", msg);
        sqlprint();
}
