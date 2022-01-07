
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysinfo {unsigned long totalram; unsigned long freeram; unsigned long bufferram; int mem_unit; } ;


 int _exit (int) ;
 int print (char const*) ;
 int print_k_value (char*,unsigned long,int ) ;
 int sysinfo (struct sysinfo*) ;

void _start(void)
{
 int ccode;
 struct sysinfo info;
 unsigned long used;
 static const char *test_name = " get runtime memory use\n";

 print("TAP version 13\n");
 print("# Testing system size.\n");

 ccode = sysinfo(&info);
 if (ccode < 0) {
  print("not ok 1");
  print(test_name);
  print(" ---\n reason: \"could not get sysinfo\"\n ...\n");
  _exit(ccode);
 }
 print("ok 1");
 print(test_name);


 used = info.totalram - info.freeram - info.bufferram;
 print("# System runtime memory report (units in Kilobytes):\n");
 print(" ---\n");
 print_k_value(" Total:  ", info.totalram, info.mem_unit);
 print_k_value(" Free:   ", info.freeram, info.mem_unit);
 print_k_value(" Buffer: ", info.bufferram, info.mem_unit);
 print_k_value(" In use: ", used, info.mem_unit);
 print(" ...\n");
 print("1..1\n");

 _exit(0);
}
