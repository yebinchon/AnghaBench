
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*) ;
 int sqlprint () ;
 int stderr ;

__attribute__((used)) static void print2(void)
{
        fprintf(stderr, "Found another error\n");
        sqlprint();
}
