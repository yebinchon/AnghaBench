
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pgstat_report_wait_end () ;

__attribute__((used)) static inline void
LWLockReportWaitEnd(void)
{
 pgstat_report_wait_end();
}
