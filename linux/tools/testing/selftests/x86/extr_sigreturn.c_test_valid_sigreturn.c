
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct selectors {int ss; int cs; } ;
typedef int greg_t ;


 int NGREG ;
 int REG_CSGSFS ;
 int REG_CX ;
 int REG_IP ;
 int REG_SP ;
 int REG_TRAPNO ;
 int REG_UESP ;
 int SIGUSR1 ;
 int data16_sel ;
 int find_cs (int) ;
 scalar_t__ nerrs ;
 int printf (char*,...) ;
 int raise (int ) ;
 int* requested_regs ;
 int* resulting_regs ;
 int sig_cs ;
 int sig_ss ;

__attribute__((used)) static int test_valid_sigreturn(int cs_bits, bool use_16bit_ss, int force_ss)
{
 int cs = find_cs(cs_bits);
 if (cs == -1) {
  printf("[SKIP]\tCode segment unavailable for %d-bit CS, %d-bit SS\n",
         cs_bits, use_16bit_ss ? 16 : 32);
  return 0;
 }

 if (force_ss != -1) {
  sig_ss = force_ss;
 } else {
  if (use_16bit_ss) {
   if (!data16_sel) {
    printf("[SKIP]\tData segment unavailable for %d-bit CS, 16-bit SS\n",
           cs_bits);
    return 0;
   }
   sig_ss = data16_sel;
  } else {
   asm volatile ("mov %%ss,%0" : "=r" (sig_ss));
  }
 }

 sig_cs = cs;

 printf("[RUN]\tValid sigreturn: %d-bit CS (%hx), %d-bit SS (%hx%s)\n",
        cs_bits, sig_cs, use_16bit_ss ? 16 : 32, sig_ss,
        (sig_ss & 4) ? "" : ", GDT");

 raise(SIGUSR1);

 nerrs = 0;





 for (int i = 0; i < NGREG; i++) {
  greg_t req = requested_regs[i], res = resulting_regs[i];

  if (i == REG_TRAPNO || i == REG_IP)
   continue;

  if (i == REG_SP) {
   if (res == req)
    continue;

   if (cs_bits != 64 && ((res ^ req) & 0xFFFFFFFF) == 0) {
    printf("[NOTE]\tSP: %llx -> %llx\n",
           (unsigned long long)req,
           (unsigned long long)res);
    continue;
   }

   printf("[FAIL]\tSP mismatch: requested 0x%llx; got 0x%llx\n",
          (unsigned long long)requested_regs[i],
          (unsigned long long)resulting_regs[i]);
   nerrs++;
   continue;
  }

  bool ignore_reg = 0;




  if (i == REG_CSGSFS) {
   struct selectors *req_sels =
    (void *)&requested_regs[REG_CSGSFS];
   struct selectors *res_sels =
    (void *)&resulting_regs[REG_CSGSFS];
   if (req_sels->cs != res_sels->cs) {
    printf("[FAIL]\tCS mismatch: requested 0x%hx; got 0x%hx\n",
           req_sels->cs, res_sels->cs);
    nerrs++;
   }

   if (req_sels->ss != res_sels->ss) {
    printf("[FAIL]\tSS mismatch: requested 0x%hx; got 0x%hx\n",
           req_sels->ss, res_sels->ss);
    nerrs++;
   }

   continue;
  }



  if (i == REG_CX && req != res) {
   printf("[FAIL]\tCX (saved SP) mismatch: requested 0x%llx; got 0x%llx\n",
          (unsigned long long)req,
          (unsigned long long)res);
   nerrs++;
   continue;
  }

  if (req != res && !ignore_reg) {
   printf("[FAIL]\tReg %d mismatch: requested 0x%llx; got 0x%llx\n",
          i, (unsigned long long)req,
          (unsigned long long)res);
   nerrs++;
  }
 }

 if (nerrs == 0)
  printf("[OK]\tall registers okay\n");

 return nerrs;
}
