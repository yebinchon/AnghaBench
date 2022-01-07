
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HANDLE ;
typedef int BOOL ;


 int IsWow64Process (int ,int*) ;
 scalar_t__ is_64bit_windows () ;

__attribute__((used)) static inline bool is_64bit_process(HANDLE process)
{
 BOOL x86 = 1;
 if (is_64bit_windows()) {
  bool success = !!IsWow64Process(process, &x86);
  if (!success) {
   return 0;
  }
 }

 return !x86;
}
