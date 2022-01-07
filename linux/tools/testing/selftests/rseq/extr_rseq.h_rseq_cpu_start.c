
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int cpu_id_start; } ;


 int RSEQ_ACCESS_ONCE (int ) ;
 TYPE_1__ __rseq_abi ;

__attribute__((used)) static inline uint32_t rseq_cpu_start(void)
{
 return RSEQ_ACCESS_ONCE(__rseq_abi.cpu_id_start);
}
