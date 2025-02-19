
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timex {int freq; void* modes; } ;


 void* ADJ_FREQUENCY ;
 int NUM_FREQ_INVALID ;
 int NUM_FREQ_OUTOFRANGE ;
 int NUM_FREQ_VALID ;
 int adjtimex (struct timex*) ;
 int clear_time_state () ;
 int fflush (int ) ;
 int* invalid_freq ;
 int memset (struct timex*,int ,int) ;
 int* outofrange_freq ;
 int printf (char*,...) ;
 int stdout ;
 int* valid_freq ;

int validate_freq(void)
{
 struct timex tx;
 int ret, pass = 0;
 int i;

 clear_time_state();

 memset(&tx, 0, sizeof(struct timex));


 printf("Testing ADJ_FREQ... ");
 fflush(stdout);
 for (i = 0; i < NUM_FREQ_VALID; i++) {
  tx.modes = ADJ_FREQUENCY;
  tx.freq = valid_freq[i];

  ret = adjtimex(&tx);
  if (ret < 0) {
   printf("[FAIL]\n");
   printf("Error: adjtimex(ADJ_FREQ, %ld - %ld ppm\n",
    valid_freq[i], valid_freq[i]>>16);
   pass = -1;
   goto out;
  }
  tx.modes = 0;
  ret = adjtimex(&tx);
  if (tx.freq != valid_freq[i]) {
   printf("Warning: freq value %ld not what we set it (%ld)!\n",
     tx.freq, valid_freq[i]);
  }
 }
 for (i = 0; i < NUM_FREQ_OUTOFRANGE; i++) {
  tx.modes = ADJ_FREQUENCY;
  tx.freq = outofrange_freq[i];

  ret = adjtimex(&tx);
  if (ret < 0) {
   printf("[FAIL]\n");
   printf("Error: adjtimex(ADJ_FREQ, %ld - %ld ppm\n",
    outofrange_freq[i], outofrange_freq[i]>>16);
   pass = -1;
   goto out;
  }
  tx.modes = 0;
  ret = adjtimex(&tx);
  if (tx.freq == outofrange_freq[i]) {
   printf("[FAIL]\n");
   printf("ERROR: out of range value %ld actually set!\n",
     tx.freq);
   pass = -1;
   goto out;
  }
 }


 if (sizeof(long) == 8) {
  for (i = 0; i < NUM_FREQ_INVALID; i++) {
   tx.modes = ADJ_FREQUENCY;
   tx.freq = invalid_freq[i];
   ret = adjtimex(&tx);
   if (ret >= 0) {
    printf("[FAIL]\n");
    printf("Error: No failure on invalid ADJ_FREQUENCY %ld\n",
     invalid_freq[i]);
    pass = -1;
    goto out;
   }
  }
 }

 printf("[OK]\n");
out:

 tx.modes = ADJ_FREQUENCY;
 tx.freq = 0;
 ret = adjtimex(&tx);

 return pass;
}
