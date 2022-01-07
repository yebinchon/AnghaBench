
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
typedef int pthread_t ;


 scalar_t__ DEFAULT_RUNTIME ;
 int DEFAULT_THREAD_COUNT ;
 int MAX_THREADS ;
 void* atoi (int ) ;
 int done ;
 int fflush (int ) ;
 int getopt (int,char**,char*) ;
 void* independent_thread (void*) ;
 int ksft_exit_fail () ;
 int ksft_exit_pass () ;
 int localtime (scalar_t__*) ;
 int optarg ;
 int printf (char*,...) ;
 int pthread_create (int *,int ,void* (*) (void*),int ) ;
 int pthread_join (int ,void**) ;
 int setbuf (int ,int *) ;
 void* shared_thread (void*) ;
 int sleep (int) ;
 int stdout ;
 int strftime (char*,int,char*,int ) ;
 scalar_t__ time (scalar_t__*) ;

int main(int argc, char **argv)
{
 int thread_count, i;
 time_t start, now, runtime;
 char buf[255];
 pthread_t pth[MAX_THREADS];
 int opt;
 void *tret;
 int ret = 0;
 void *(*thread)(void *) = shared_thread;

 thread_count = DEFAULT_THREAD_COUNT;
 runtime = DEFAULT_RUNTIME;


 while ((opt = getopt(argc, argv, "t:n:i")) != -1) {
  switch (opt) {
  case 't':
   runtime = atoi(optarg);
   break;
  case 'n':
   thread_count = atoi(optarg);
   break;
  case 'i':
   thread = independent_thread;
   printf("using independent threads\n");
   break;
  default:
   printf("Usage: %s [-t <secs>] [-n <numthreads>] [-i]\n", argv[0]);
   printf("	-t: time to run\n");
   printf("	-n: number of threads\n");
   printf("	-i: use independent threads\n");
   return -1;
  }
 }

 if (thread_count > MAX_THREADS)
  thread_count = MAX_THREADS;


 setbuf(stdout, ((void*)0));

 start = time(0);
 strftime(buf, 255, "%a, %d %b %Y %T %z", localtime(&start));
 printf("%s\n", buf);
 printf("Testing consistency with %i threads for %ld seconds: ", thread_count, runtime);
 fflush(stdout);


 for (i = 0; i < thread_count; i++)
  pthread_create(&pth[i], 0, thread, 0);

 while (time(&now) < start + runtime) {
  sleep(1);
  if (done) {
   ret = 1;
   strftime(buf, 255, "%a, %d %b %Y %T %z", localtime(&now));
   printf("%s\n", buf);
   goto out;
  }
 }
 printf("[OK]\n");
 done = 1;

out:

 for (i = 0; i < thread_count; i++)
  pthread_join(pth[i], &tret);


 if (ret)
  ksft_exit_fail();
 return ksft_exit_pass();
}
