
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t dwCount; scalar_t__ dwSize; scalar_t__* dwOffset; } ;
typedef int * LPSTR ;
typedef int LPCWSTR ;
typedef TYPE_1__* LPCANDIDATELIST ;
typedef scalar_t__ LPBYTE ;
typedef scalar_t__ DWORD ;


 int CANDIDATELIST ;
 int CP_ACP ;
 scalar_t__ FIELD_OFFSET (int ,int ) ;
 scalar_t__ WideCharToMultiByte (int ,int ,int ,int,int *,scalar_t__,int *,int *) ;
 int * dwOffset ;

__attribute__((used)) static DWORD convert_candidatelist_WtoA(
        LPCANDIDATELIST lpSrc, LPCANDIDATELIST lpDst, DWORD dwBufLen)
{
    DWORD ret, i, len;

    ret = FIELD_OFFSET( CANDIDATELIST, dwOffset[lpSrc->dwCount] );
    if ( lpDst && dwBufLen > 0 )
    {
        *lpDst = *lpSrc;
        lpDst->dwOffset[0] = ret;
    }

    for ( i = 0; i < lpSrc->dwCount; i++)
    {
        LPBYTE src = (LPBYTE)lpSrc + lpSrc->dwOffset[i];

        if ( lpDst && dwBufLen > 0 )
        {
            LPBYTE dest = (LPBYTE)lpDst + lpDst->dwOffset[i];

            len = WideCharToMultiByte(CP_ACP, 0, (LPCWSTR)src, -1,
                                      (LPSTR)dest, dwBufLen, ((void*)0), ((void*)0));

            if ( i + 1 < lpSrc->dwCount )
                lpDst->dwOffset[i+1] = lpDst->dwOffset[i] + len * sizeof(char);
            dwBufLen -= len * sizeof(char);
        }
        else
            len = WideCharToMultiByte(CP_ACP, 0, (LPCWSTR)src, -1, ((void*)0), 0, ((void*)0), ((void*)0));

        ret += len * sizeof(char);
    }

    if ( lpDst )
        lpDst->dwSize = ret;

    return ret;
}
