
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_RTC_USED () ;
 unsigned short RTC_U32MSEC_REG_RD () ;
 unsigned long RTC_U32SECS_REG_RD () ;
 unsigned long long RTC_U64MSEC_MK (unsigned long,unsigned short) ;
 int SCC_U64MSEC_MATCH_SET (int ) ;
 int SELECT_SCC_U42BITS (unsigned long long) ;

void PRCMRTCMatchSet(unsigned long ulSecs, unsigned short usMsec)
{
        unsigned long long ullMsec = 0;

        if(IS_RTC_USED()) {
                ullMsec = RTC_U64MSEC_MK(ulSecs, usMsec);
                ullMsec -= RTC_U64MSEC_MK(RTC_U32SECS_REG_RD(),
                                          RTC_U32MSEC_REG_RD());
                SCC_U64MSEC_MATCH_SET(SELECT_SCC_U42BITS(ullMsec));
        }

        return;
}
