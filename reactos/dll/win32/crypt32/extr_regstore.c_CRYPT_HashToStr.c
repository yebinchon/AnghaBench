
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int const* LPWSTR ;
typedef int DWORD ;
typedef int BYTE ;


 int assert (int const*) ;
 int wsprintfW (int const*,char const*,int const) ;

__attribute__((used)) static void CRYPT_HashToStr(const BYTE *hash, LPWSTR asciiHash)
{
    static const WCHAR fmt[] = { '%','0','2','X',0 };
    DWORD i;

    assert(hash);
    assert(asciiHash);

    for (i = 0; i < 20; i++)
        wsprintfW(asciiHash + i * 2, fmt, hash[i]);
}
