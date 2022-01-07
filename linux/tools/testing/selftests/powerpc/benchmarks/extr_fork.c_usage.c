
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void usage(void)
{
 fprintf(stderr, "Usage: fork <options> CPU\n\n");
 fprintf(stderr, "\t\t--fork\tUse fork() (default threads)\n");
 fprintf(stderr, "\t\t--vfork\tUse vfork() (default threads)\n");
 fprintf(stderr, "\t\t--exec\tAlso exec() (default no exec)\n");
 fprintf(stderr, "\t\t--timeout=X\tDuration in seconds to run (default 30)\n");
 fprintf(stderr, "\t\t--exec-target\tInternal option for exec workload\n");
}
