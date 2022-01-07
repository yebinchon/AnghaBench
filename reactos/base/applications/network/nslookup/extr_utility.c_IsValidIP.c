
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* PCHAR ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int strlen (char*) ;

BOOL IsValidIP( PCHAR pInput )
{
    int i = 0, l = 0, b = 0, c = 1;


    l = strlen( pInput );
    if( l > 15 ) return FALSE;



    for( ; i < l; i += 1 )
    {
        if( '.' == pInput[i] )
        {
            if( !b ) return FALSE;
            if( b > 3 ) return FALSE;

            b = 0;
            c += 1;
        }
        else
        {
            b += 1;

            if( (pInput[i] < '0') || (pInput[i] > '9') ) return FALSE;
        }
    }

    if( b > 3 ) return FALSE;



    if( c < 4 ) return FALSE;

    return TRUE;
}
