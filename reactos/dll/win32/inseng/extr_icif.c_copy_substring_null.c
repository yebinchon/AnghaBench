
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HRESULT ;


 int E_FAIL ;
 int S_OK ;

__attribute__((used)) static HRESULT copy_substring_null(char *dest, int max_len, char *src)
{
    if (!src)
        return E_FAIL;

    if (max_len <= 0)
        return S_OK;

    if (!dest)
        return E_FAIL;

    while (*src && max_len-- > 1)
        *dest++ = *src++;
    *dest = 0;

    return S_OK;
}
