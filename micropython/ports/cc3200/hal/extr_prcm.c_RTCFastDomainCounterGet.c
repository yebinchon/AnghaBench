
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BRK_IF_RTC_CTRS_ALIGN (unsigned long long,unsigned long long) ;
 unsigned long long PRCMSlowClkCtrFastGet () ;

__attribute__((used)) static unsigned long long RTCFastDomainCounterGet (void) {






    unsigned long long rtc_count1, rtc_count2, rtc_count3;
    unsigned int itr;

    do {
        rtc_count1 = PRCMSlowClkCtrFastGet();
        rtc_count2 = PRCMSlowClkCtrFastGet();
        rtc_count3 = PRCMSlowClkCtrFastGet();
        itr = 0;

        if (rtc_count2 - rtc_count1 <= 1) { itr++; break; };
        if (rtc_count3 - rtc_count2 <= 1) { itr++; break; };
        if (rtc_count3 - rtc_count1 <= 1) { itr++; break; };






    } while (1);

    return (1 == itr) ? rtc_count2 : rtc_count3;
}
