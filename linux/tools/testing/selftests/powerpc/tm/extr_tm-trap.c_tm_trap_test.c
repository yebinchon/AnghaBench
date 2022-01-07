
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
struct sigaction {int sa_sigaction; void* sa_flags; } ;
typedef int pthread_attr_t ;
typedef int cpu_set_t ;


 int CPU_SET (int ,int *) ;
 int CPU_ZERO (int *) ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 void* SA_SIGINFO ;
 int SIGTRAP ;
 int SIGUSR1 ;
 int SKIP_IF (int) ;
 scalar_t__ exit_from_pong ;
 int fflush (int ) ;
 int have_htm () ;
 int le ;
 int ping ;
 int pong ;
 int pr_error (int,char*) ;
 int printf (char*,...) ;
 int pthread_attr_init (int *) ;
 int pthread_attr_setaffinity_np (int *,int,int *) ;
 int pthread_create (int *,int *,int ,int *) ;
 int pthread_join (int ,int *) ;
 int sigaction (int ,struct sigaction*,int *) ;
 scalar_t__ success ;
 int t0_ping ;
 int t1_pong ;
 int trap_signal_handler ;
 int usr1_signal_handler ;

int tm_trap_test(void)
{
 uint16_t k = 1;

 int rc;

 pthread_attr_t attr;
 cpu_set_t cpuset;

 struct sigaction trap_sa;

 SKIP_IF(!have_htm());

 trap_sa.sa_flags = SA_SIGINFO;
 trap_sa.sa_sigaction = trap_signal_handler;
 sigaction(SIGTRAP, &trap_sa, ((void*)0));

 struct sigaction usr1_sa;

 usr1_sa.sa_flags = SA_SIGINFO;
 usr1_sa.sa_sigaction = usr1_signal_handler;
 sigaction(SIGUSR1, &usr1_sa, ((void*)0));


 CPU_ZERO(&cpuset);
 CPU_SET(0, &cpuset);


 rc = pthread_attr_init(&attr);
 if (rc)
  pr_error(rc, "pthread_attr_init()");






 rc = pthread_attr_setaffinity_np(&attr, sizeof(cpu_set_t), &cpuset);
 if (rc)
  pr_error(rc, "pthread_attr_setaffinity()");


 le = (int) *(uint8_t *)&k;

 printf("%s machine detected. Checking if endianness flips %s",
  le ? "Little-Endian" : "Big-Endian",
  "inadvertently on trap in TM... ");

 rc = fflush(0);
 if (rc)
  pr_error(rc, "fflush()");


 rc = pthread_create(&t0_ping, &attr, ping, ((void*)0));
 if (rc)
  pr_error(rc, "pthread_create()");

 exit_from_pong = 0;


 rc = pthread_create(&t1_pong, &attr, pong, ((void*)0));
 if (rc)
  pr_error(rc, "pthread_create()");

 rc = pthread_join(t0_ping, ((void*)0));
 if (rc)
  pr_error(rc, "pthread_join()");

 rc = pthread_join(t1_pong, ((void*)0));
 if (rc)
  pr_error(rc, "pthread_join()");

 if (success) {
  printf("no.\n");
  return EXIT_SUCCESS;
 }

 printf("yes!\n");
 return EXIT_FAILURE;
}
