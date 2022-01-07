
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ npy_uint64 ;
typedef scalar_t__ npy_uint32 ;


 int DEBUG_ASSERT (int) ;
 int memcpy (char*,char*,scalar_t__) ;

__attribute__((used)) static npy_uint32
PrintInfNan(char *buffer, npy_uint32 bufferSize, npy_uint64 mantissa,
            npy_uint32 mantissaHexWidth, char signbit)
{
    npy_uint32 maxPrintLen = bufferSize-1;
    npy_uint32 pos = 0;

    DEBUG_ASSERT(bufferSize > 0);


    if (mantissa == 0) {
        npy_uint32 printLen;


        if (signbit == '+') {
            if (pos < maxPrintLen-1) {
                buffer[pos++] = '+';
            }
        }
        else if (signbit == '-') {
            if (pos < maxPrintLen-1) {
                buffer[pos++] = '-';
            }
        }


        printLen = (3 < maxPrintLen - pos) ? 3 : maxPrintLen - pos;
        memcpy(buffer + pos, "inf", printLen);
        buffer[pos + printLen] = '\0';
        return pos + printLen;
    }
    else {

        npy_uint32 printLen = (3 < maxPrintLen - pos) ? 3 : maxPrintLen - pos;
        memcpy(buffer + pos, "nan", printLen);
        buffer[pos + printLen] = '\0';
        return pos + printLen;
    }
}
