
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void usage(void)
{
 fprintf(stderr, "Usage: context_switch2 <options> CPU1 CPU2\n\n");
 fprintf(stderr, "\t\t--test=X\tpipe, futex or yield (default)\n");
 fprintf(stderr, "\t\t--process\tUse processes (default threads)\n");
 fprintf(stderr, "\t\t--timeout=X\tDuration in seconds to run (default 30)\n");
 fprintf(stderr, "\t\t--vdso\t\ttouch VDSO\n");
 fprintf(stderr, "\t\t--no-fp\t\tDon't touch FP\n");



 fprintf(stderr, "\t\t--no-vector\tDon't touch vector\n");
}
