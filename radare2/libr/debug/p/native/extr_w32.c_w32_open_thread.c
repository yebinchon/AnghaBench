
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HANDLE ;


 scalar_t__ INVALID_HANDLE_VALUE ;
 int THREAD_ALL_ACCESS ;
 int r_sys_perror (char*) ;
 scalar_t__ w32_OpenThread (int ,int ,int) ;

__attribute__((used)) static HANDLE w32_open_thread(int pid, int tid) {
 HANDLE thread = w32_OpenThread (THREAD_ALL_ACCESS, 0, tid);
 if (thread == INVALID_HANDLE_VALUE) {
  r_sys_perror ("w32_open_thread/OpenThread");
 }
 return thread;
}
