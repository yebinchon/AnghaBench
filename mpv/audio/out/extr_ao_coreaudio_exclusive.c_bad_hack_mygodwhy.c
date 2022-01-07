
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef float int16_t ;


 float AV_RN16 (char*) ;
 int AV_WN32 (char*,int ) ;
 int av_float2int (float) ;

__attribute__((used)) static void bad_hack_mygodwhy(char *data, int samples)
{

    for (int n = samples - 1; n >= 0; n--) {
        int16_t val = AV_RN16(data + n * 2);
        float fval = val / (float)(1 << 15);
        uint32_t ival = av_float2int(fval);
        AV_WN32(data + n * 4, ival);
    }
}
