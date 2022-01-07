
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_2__ {int cpu_id; } ;


 int RSEQ_ACCESS_ONCE (int ) ;
 TYPE_1__ __rseq_abi ;

__attribute__((used)) static inline int32_t rseq_current_cpu_raw(void)
{
 return RSEQ_ACCESS_ONCE(__rseq_abi.cpu_id);
}
