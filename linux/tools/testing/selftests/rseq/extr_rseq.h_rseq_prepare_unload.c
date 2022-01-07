
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rseq_clear_rseq_cs () ;

__attribute__((used)) static inline void rseq_prepare_unload(void)
{
 rseq_clear_rseq_cs();
}
