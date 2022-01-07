
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
typedef char BYTE ;


 int memcpy (char*,char const*,int) ;

__attribute__((used)) static void res_write_padding( BYTE *res_base, DWORD size )
{
    static const BYTE pad[] = {
        'P','A','D','D','I','N','G','X','X','P','A','D','D','I','N','G' };
    DWORD i;

    for ( i = 0; i < size / sizeof pad; i++ )
        memcpy( &res_base[i*sizeof pad], pad, sizeof pad );
    memcpy( &res_base[i*sizeof pad], pad, size%sizeof pad );
}
