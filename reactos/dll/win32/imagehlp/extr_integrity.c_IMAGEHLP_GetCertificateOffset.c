
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HANDLE ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 int FILE_BEGIN ;
 scalar_t__ IMAGEHLP_GetSecurityDirOffset (int ,int*,int*) ;
 int INVALID_SET_FILE_POINTER ;
 scalar_t__ ReadFile (int ,int*,int,int*,int *) ;
 int SetFilePointer (int ,int,int *,int ) ;
 int TRACE (char*,int,int) ;
 scalar_t__ TRUE ;

__attribute__((used)) static BOOL IMAGEHLP_GetCertificateOffset( HANDLE handle, DWORD num,
                                           DWORD *pdwOfs, DWORD *pdwSize )
{
    DWORD size, count, offset, len, sd_VirtualAddr;
    BOOL r;

    r = IMAGEHLP_GetSecurityDirOffset( handle, &sd_VirtualAddr, &size );
    if( !r )
        return FALSE;

    offset = 0;

    while( 1 )
    {

        count = SetFilePointer( handle, sd_VirtualAddr + offset,
                                 ((void*)0), FILE_BEGIN );
        if( count == INVALID_SET_FILE_POINTER )
            return FALSE;
        r = ReadFile( handle, &len, sizeof len, &count, ((void*)0) );
        if( !r )
            return FALSE;
        if( count != sizeof len )
            return FALSE;


        if( len < sizeof len )
            return FALSE;
        if( len > (size-offset) )
            return FALSE;
        if( !num-- )
            break;


        offset += len;


        if( len % 8 )
            offset += 8 - (len % 8);

        if( offset >= size )
            return FALSE;
    }

    *pdwOfs = sd_VirtualAddr + offset;
    *pdwSize = len;

    TRACE("len = %x addr = %x\n", len, sd_VirtualAddr + offset);

    return TRUE;
}
