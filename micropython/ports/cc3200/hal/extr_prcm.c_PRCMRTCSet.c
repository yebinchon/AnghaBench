
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_RTC_USED () ;
 int RTC_MSEC_IN_U64MSEC (unsigned long long) ;
 int RTC_SECS_IN_U64MSEC (unsigned long long) ;
 int RTC_U32MSEC_REG_WR (int ) ;
 int RTC_U32SECS_REG_WR (int ) ;
 unsigned long long RTC_U64MSEC_MK (unsigned long,unsigned short) ;
 unsigned long long SCC_U64MSEC_GET () ;

void PRCMRTCSet(unsigned long ulSecs, unsigned short usMsec)
{
        unsigned long long ullMsec = 0;

        if(IS_RTC_USED()) {
                ullMsec = RTC_U64MSEC_MK(ulSecs, usMsec) - SCC_U64MSEC_GET();

                 RTC_U32SECS_REG_WR(RTC_SECS_IN_U64MSEC(ullMsec));
                 RTC_U32MSEC_REG_WR(RTC_MSEC_IN_U64MSEC(ullMsec));
        }

        return;
}
