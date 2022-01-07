
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptrdiff_t ;
typedef scalar_t__ LZ4F_errorCodes ;
typedef int LZ4F_errorCode_t ;


 int LZ4F_STATIC_ASSERT (int) ;

__attribute__((used)) static LZ4F_errorCode_t err0r(LZ4F_errorCodes code)
{

    LZ4F_STATIC_ASSERT(sizeof(ptrdiff_t) >= sizeof(size_t));
    return (LZ4F_errorCode_t)-(ptrdiff_t)code;
}
