
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEBUG_PRINT_L1 (char*) ;
 int pread_stats ;
 int print_ustats (int *) ;
 int pwrite_stats ;
 int read_stats ;
 int seek_stats ;
 int write_stats ;

__attribute__((used)) static void print_stats(void)
{
 DEBUG_PRINT_L1("\nSyscall\tCall\tAvgTime\tAvgSize\n"
         "\tCount\t(ticks)\t(bytes)\n"
         "-------------------------------\n");

 print_ustats(&read_stats);
 print_ustats(&pread_stats);
 print_ustats(&write_stats);
 print_ustats(&pwrite_stats);
 print_ustats(&seek_stats);
}
