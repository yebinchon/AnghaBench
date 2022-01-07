
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COUNT_MAX ;
 int THREADS ;
 int exit (int) ;
 int printf (char*,...) ;

__attribute__((used)) static void show_help(char *name)
{
 printf("%s: Sigfuzzer for powerpc\n", name);
 printf("Usage:\n");
 printf("\t-b\t Mess with TM before raising a SIGUSR1 signal\n");
 printf("\t-a\t Mess with TM after raising a SIGUSR1 signal\n");
 printf("\t-m\t Mess with MSR[TS] bits at mcontext\n");
 printf("\t-x\t Mess with everything above\n");
 printf("\t-f\t Run forever (Press ^C to Quit)\n");
 printf("\t-i\t Amount of interactions.	(Default = %d)\n", COUNT_MAX);
 printf("\t-t\t Amount of threads.	(Default = %d)\n", THREADS);
 exit(-1);
}
