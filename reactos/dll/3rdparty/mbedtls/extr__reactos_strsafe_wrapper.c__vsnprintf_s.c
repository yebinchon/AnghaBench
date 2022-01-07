
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int HRESULT ;





 int StringCchVPrintfEx (char*,size_t,int *,size_t*,int ,char const*,int ) ;

int _vsnprintf_s(char *buffer, size_t sizeOfBuffer, size_t count, const char *format, va_list argptr)
{
    size_t cchRemaining;

    HRESULT ret = StringCchVPrintfEx(buffer, sizeOfBuffer, ((void*)0), &cchRemaining, 0, format, argptr);
    switch (ret)
    {
        case 128:
            return (sizeOfBuffer - cchRemaining);

        case 129:
        case 130:
        default:
            return -1;
    }
}
