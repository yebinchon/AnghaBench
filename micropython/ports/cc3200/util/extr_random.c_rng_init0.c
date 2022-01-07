
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_2__ {int id32; int * id8; int * id16; } ;
typedef TYPE_1__ rng_id_t ;


 int pyb_rtc_get_time (int*,scalar_t__*) ;
 int s_seed ;
 int wlan_get_mac (int *) ;

void rng_init0 (void) {
    rng_id_t juggler;
    uint32_t seconds;
    uint16_t mseconds;


    pyb_rtc_get_time(&seconds, &mseconds);

    wlan_get_mac (juggler.id8);


    juggler.id16[0] ^= juggler.id16[2];

    juggler.id8[0] ^= juggler.id8[3];
    juggler.id8[1] ^= juggler.id8[4];
    juggler.id8[2] ^= juggler.id8[5];

    s_seed = juggler.id32 & 0x00FFFFFF;
    s_seed += (seconds & 0x000FFFFF) + mseconds;


    if (s_seed == 0) {
        s_seed = 1;
    }
}
