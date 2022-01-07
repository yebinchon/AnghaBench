
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_7__ {int BDCR; int CSR; } ;
struct TYPE_5__ {int OutPutType; int OutPutPolarity; int OutPut; int SynchPrediv; int AsynchPrediv; int HourFormat; } ;
struct TYPE_6__ {TYPE_1__ Init; int Instance; } ;


 int HAL_GetTick () ;
 int HAL_PWR_EnableBkUpAccess () ;
 int MICROPY_HW_RTC_USE_BYPASS ;
 int PYB_RTC_MspInit_Kick (TYPE_2__*,int ,int ) ;
 TYPE_3__* RCC ;
 int RCC_BDCR_LSEON ;
 int RCC_BDCR_LSERDY ;
 int RCC_BDCR_RTCEN ;
 int RCC_BDCR_RTCSEL ;
 int RCC_BDCR_RTCSEL_0 ;
 int RCC_BDCR_RTCSEL_1 ;
 int RCC_CSR_LSION ;
 int RTC ;
 TYPE_2__ RTCHandle ;
 int RTC_ASYNCH_PREDIV ;
 int RTC_HOURFORMAT_24 ;
 int RTC_OUTPUT_DISABLE ;
 int RTC_OUTPUT_POLARITY_HIGH ;
 int RTC_OUTPUT_TYPE_OPENDRAIN ;
 int RTC_SYNCH_PREDIV ;
 int __HAL_RCC_CLEAR_RESET_FLAGS () ;
 int rtc_info ;
 int rtc_need_init_finalise ;
 int rtc_startup_tick ;
 int rtc_use_lse ;

void rtc_init_start(bool force_init) {
    RTCHandle.Instance = RTC;
    RTCHandle.Init.HourFormat = RTC_HOURFORMAT_24;
    RTCHandle.Init.AsynchPrediv = RTC_ASYNCH_PREDIV;
    RTCHandle.Init.SynchPrediv = RTC_SYNCH_PREDIV;
    RTCHandle.Init.OutPut = RTC_OUTPUT_DISABLE;
    RTCHandle.Init.OutPutPolarity = RTC_OUTPUT_POLARITY_HIGH;
    RTCHandle.Init.OutPutType = RTC_OUTPUT_TYPE_OPENDRAIN;

    rtc_need_init_finalise = 0;

    if (!force_init) {
        uint32_t bdcr = RCC->BDCR;
        if ((bdcr & (RCC_BDCR_RTCEN | RCC_BDCR_RTCSEL | RCC_BDCR_LSEON | RCC_BDCR_LSERDY))
            == (RCC_BDCR_RTCEN | RCC_BDCR_RTCSEL_0 | RCC_BDCR_LSEON | RCC_BDCR_LSERDY)) {


            HAL_PWR_EnableBkUpAccess();

            __HAL_RCC_CLEAR_RESET_FLAGS();

            rtc_info |= 0x40000 | (RCC->BDCR & 7) | (RCC->CSR & 3) << 8;
            return;
        } else if ((bdcr & (RCC_BDCR_RTCEN | RCC_BDCR_RTCSEL))
            == (RCC_BDCR_RTCEN | RCC_BDCR_RTCSEL_1)) {


            HAL_PWR_EnableBkUpAccess();

            __HAL_RCC_CLEAR_RESET_FLAGS();

            RCC->CSR |= RCC_CSR_LSION;

            rtc_info |= 0x80000 | (RCC->BDCR & 7) | (RCC->CSR & 3) << 8;
            return;
        }
    }

    rtc_startup_tick = HAL_GetTick();
    rtc_info = 0x3f000000 | (rtc_startup_tick & 0xffffff);
    PYB_RTC_MspInit_Kick(&RTCHandle, rtc_use_lse, MICROPY_HW_RTC_USE_BYPASS);
}
