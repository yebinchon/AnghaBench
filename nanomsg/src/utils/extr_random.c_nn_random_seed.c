
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 scalar_t__ GetCurrentProcessId () ;
 scalar_t__ getpid () ;
 int memcpy (int *,char*,int) ;
 int nn_clock_ms () ;
 int nn_random_state ;

void nn_random_seed ()
{
    uint64_t pid;




    pid = (uint64_t) getpid ();




    memcpy (&nn_random_state, "\xfa\x9b\x23\xe3\x07\xcc\x61\x1f", 8);
    nn_random_state ^= pid + nn_clock_ms();
}
