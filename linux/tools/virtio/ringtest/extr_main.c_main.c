
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 long INT_MAX ;
 int alloc_ring () ;
 int assert (int) ;
 scalar_t__ batch ;
 scalar_t__ callfd ;
 int do_exit ;
 int do_relax ;
 int do_sleep ;
 scalar_t__ eventfd (int ,int ) ;
 int exit (int) ;
 int getopt_long (int,char**,int ,int ,int *) ;
 int help () ;
 scalar_t__ kickfd ;
 int longopts ;
 scalar_t__ max_outstanding ;
 char* optarg ;
 int optind ;
 int optstring ;
 long param ;
 int pthread_create (int *,int *,int ,char*) ;
 int pthread_join (int ,void**) ;
 int ring_size ;
 long runcycles ;
 int smp_acquire () ;
 int smp_mb () ;
 int smp_release () ;
 int start_guest ;
 int start_host ;
 void* strtol (char*,char**,int ) ;

int main(int argc, char **argv)
{
 int ret;
 pthread_t host, guest;
 void *tret;
 char *host_arg = ((void*)0);
 char *guest_arg = ((void*)0);
 char *endptr;
 long int c;

 kickfd = eventfd(0, 0);
 assert(kickfd >= 0);
 callfd = eventfd(0, 0);
 assert(callfd >= 0);

 for (;;) {
  int o = getopt_long(argc, argv, optstring, longopts, ((void*)0));
  switch (o) {
  case -1:
   goto done;
  case '?':
   help();
   exit(2);
  case 'H':
   host_arg = optarg;
   break;
  case 'G':
   guest_arg = optarg;
   break;
  case 'R':
   ring_size = strtol(optarg, &endptr, 0);
   assert(ring_size && !(ring_size & (ring_size - 1)));
   assert(!*endptr);
   break;
  case 'C':
   c = strtol(optarg, &endptr, 0);
   assert(!*endptr);
   assert(c > 0 && c < INT_MAX);
   runcycles = c;
   break;
  case 'o':
   c = strtol(optarg, &endptr, 0);
   assert(!*endptr);
   assert(c > 0 && c < INT_MAX);
   max_outstanding = c;
   break;
  case 'p':
   c = strtol(optarg, &endptr, 0);
   assert(!*endptr);
   assert(c > 0 && c < INT_MAX);
   param = c;
   break;
  case 'b':
   c = strtol(optarg, &endptr, 0);
   assert(!*endptr);
   assert(c > 0 && c < INT_MAX);
   batch = c;
   break;
  case 's':
   do_sleep = 1;
   break;
  case 'x':
   do_relax = 1;
   break;
  case 'e':
   do_exit = 1;
   break;
  default:
   help();
   exit(4);
   break;
  }
 }


 smp_acquire();
 smp_release();
 smp_mb();
done:

 if (batch > max_outstanding)
  batch = max_outstanding;

 if (optind < argc) {
  help();
  exit(4);
 }
 alloc_ring();

 ret = pthread_create(&host, ((void*)0), start_host, host_arg);
 assert(!ret);
 ret = pthread_create(&guest, ((void*)0), start_guest, guest_arg);
 assert(!ret);

 ret = pthread_join(guest, &tret);
 assert(!ret);
 ret = pthread_join(host, &tret);
 assert(!ret);
 return 0;
}
