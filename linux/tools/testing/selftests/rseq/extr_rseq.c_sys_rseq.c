
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rseq {int dummy; } ;


 int __NR_rseq ;
 int syscall (int ,struct rseq volatile*,int ,int,int ) ;

__attribute__((used)) static int sys_rseq(volatile struct rseq *rseq_abi, uint32_t rseq_len,
      int flags, uint32_t sig)
{
 return syscall(__NR_rseq, rseq_abi, rseq_len, flags, sig);
}
