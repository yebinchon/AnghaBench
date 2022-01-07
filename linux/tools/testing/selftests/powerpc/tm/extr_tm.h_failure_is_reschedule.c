
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TM_CAUSE_KVM_FAC_UNAV ;
 int TM_CAUSE_KVM_RESCHED ;
 int TM_CAUSE_RESCHED ;
 int failure_code () ;

__attribute__((used)) static inline bool failure_is_reschedule(void)
{
 if ((failure_code() & TM_CAUSE_RESCHED) == TM_CAUSE_RESCHED ||
     (failure_code() & TM_CAUSE_KVM_RESCHED) == TM_CAUSE_KVM_RESCHED ||
     (failure_code() & TM_CAUSE_KVM_FAC_UNAV) == TM_CAUSE_KVM_FAC_UNAV)
  return 1;

 return 0;
}
