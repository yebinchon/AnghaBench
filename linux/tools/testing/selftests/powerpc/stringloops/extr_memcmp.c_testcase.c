
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ITERATIONS ;
 int LARGE_ITERATIONS ;
 unsigned long LARGE_MAX_OFFSET ;
 unsigned long LARGE_SIZE ;
 int LARGE_SIZE_START ;
 unsigned long MAX_OFFSET_DIFF_S1_S2 ;
 unsigned long SIZE ;
 int exit (int) ;
 char* memalign (int,unsigned long) ;
 int memcpy (char*,char*,unsigned long) ;
 int perror (char*) ;
 int random () ;
 int srandom (int ) ;
 int test_one (char*,char*,unsigned long,int ,unsigned long) ;
 int time (int ) ;

__attribute__((used)) static int testcase(bool islarge)
{
 char *s1;
 char *s2;
 unsigned long i;

 unsigned long comp_size = (islarge ? LARGE_SIZE : SIZE);
 unsigned long alloc_size = comp_size + MAX_OFFSET_DIFF_S1_S2;
 int iterations = islarge ? LARGE_ITERATIONS : ITERATIONS;

 s1 = memalign(128, alloc_size);
 if (!s1) {
  perror("memalign");
  exit(1);
 }

 s2 = memalign(128, alloc_size);
 if (!s2) {
  perror("memalign");
  exit(1);
 }

 srandom(time(0));

 for (i = 0; i < iterations; i++) {
  unsigned long j;
  unsigned long change;
  char *rand_s1 = s1;
  char *rand_s2 = s2;

  for (j = 0; j < alloc_size; j++)
   s1[j] = random();

  rand_s1 += random() % MAX_OFFSET_DIFF_S1_S2;
  rand_s2 += random() % MAX_OFFSET_DIFF_S1_S2;
  memcpy(rand_s2, rand_s1, comp_size);


  change = random() % comp_size;
  rand_s2[change] = random() & 0xff;

  if (islarge)
   test_one(rand_s1, rand_s2, LARGE_MAX_OFFSET,
     LARGE_SIZE_START, comp_size);
  else
   test_one(rand_s1, rand_s2, SIZE, 0, comp_size);
 }

 srandom(time(0));

 for (i = 0; i < iterations; i++) {
  unsigned long j;
  unsigned long change;
  char *rand_s1 = s1;
  char *rand_s2 = s2;

  for (j = 0; j < alloc_size; j++)
   s1[j] = random();

  rand_s1 += random() % MAX_OFFSET_DIFF_S1_S2;
  rand_s2 += random() % MAX_OFFSET_DIFF_S1_S2;
  memcpy(rand_s2, rand_s1, comp_size);


  for (j = 0; j < comp_size / 8; j++) {
   change = random() % comp_size;
   s2[change] = random() & 0xff;
  }

  if (islarge)
   test_one(rand_s1, rand_s2, LARGE_MAX_OFFSET,
     LARGE_SIZE_START, comp_size);
  else
   test_one(rand_s1, rand_s2, SIZE, 0, comp_size);
 }

 return 0;
}
