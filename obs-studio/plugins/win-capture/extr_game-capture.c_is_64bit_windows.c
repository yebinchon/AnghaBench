
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 int GetCurrentProcess () ;
 int IsWow64Process (int ,int*) ;

__attribute__((used)) static inline bool is_64bit_windows(void)
{



 BOOL x86 = 0;
 bool success = !!IsWow64Process(GetCurrentProcess(), &x86);
 return success && !!x86;

}
