
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int UINTEGER64 ;


 int UINT64 (int) ;
 int openvpn_time (int *) ;

__attribute__((used)) static void
gen_timestamp(uint8_t *timestamp)
{





    UINTEGER64 timestamp_ull;

    timestamp_ull = openvpn_time(((void*)0));
    timestamp_ull = (timestamp_ull + UINT64(11644473600)) * UINT64(10000000);


    timestamp[0] = timestamp_ull & UINT64(0xFF);
    timestamp[1] = (timestamp_ull >> 8) & UINT64(0xFF);
    timestamp[2] = (timestamp_ull >> 16) & UINT64(0xFF);
    timestamp[3] = (timestamp_ull >> 24) & UINT64(0xFF);
    timestamp[4] = (timestamp_ull >> 32) & UINT64(0xFF);
    timestamp[5] = (timestamp_ull >> 40) & UINT64(0xFF);
    timestamp[6] = (timestamp_ull >> 48) & UINT64(0xFF);
    timestamp[7] = (timestamp_ull >> 56) & UINT64(0xFF);
}
