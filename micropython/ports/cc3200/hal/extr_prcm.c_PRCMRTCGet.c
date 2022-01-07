
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_RTC_USED () ;
 unsigned short RTC_MSEC_IN_U64MSEC (unsigned long long) ;
 unsigned long RTC_SECS_IN_U64MSEC (unsigned long long) ;
 int RTC_U32MSEC_REG_RD () ;
 int RTC_U32SECS_REG_RD () ;
 unsigned long long RTC_U64MSEC_MK (int ,int ) ;
 scalar_t__ SCC_U64MSEC_GET () ;

void PRCMRTCGet(unsigned long *ulSecs, unsigned short *usMsec)
{
        unsigned long long ullMsec = 0;

        if(IS_RTC_USED()) {
                ullMsec = RTC_U64MSEC_MK(RTC_U32SECS_REG_RD(),
                                          RTC_U32MSEC_REG_RD());
                ullMsec += SCC_U64MSEC_GET();
        }

        *ulSecs = RTC_SECS_IN_U64MSEC(ullMsec);
        *usMsec = RTC_MSEC_IN_U64MSEC(ullMsec);

        return;
}
