
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CACHELINE_SIZE ;
 int getppid () ;
 int load (char*) ;

__attribute__((used)) static void syscall_loop(char *p, unsigned long iterations,
    unsigned long zero_size)
{
 for (unsigned long i = 0; i < iterations; i++) {
  for (unsigned long j = 0; j < zero_size; j += CACHELINE_SIZE)
   load(p + j);
  getppid();
 }
}
