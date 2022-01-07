
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HANDLE ;


 int __resume_thread (int ,int) ;

__attribute__((used)) static inline void __continue_thread(HANDLE th, int bits) {
 int ret;
 do {
  ret = __resume_thread (th, bits);
 } while (ret > 0);
}
