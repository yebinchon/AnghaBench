
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HANDLE ;


 int w32_GetProcessId (scalar_t__) ;
 int w32_GetThreadId (scalar_t__) ;

__attribute__((used)) inline static int w32_h2t(HANDLE h) {
 if (w32_GetThreadId != ((void*)0))
  return w32_GetThreadId (h);
 if (w32_GetProcessId != ((void*)0))
  return w32_GetProcessId (h);
 return (int)(size_t)h;
}
