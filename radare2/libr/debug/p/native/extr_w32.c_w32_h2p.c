
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HANDLE ;


 int w32_GetProcessId (int ) ;

__attribute__((used)) static inline int w32_h2p(HANDLE h) {
 return w32_GetProcessId (h);
}
