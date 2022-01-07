
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* PCHAR ;


 int strlen (char*) ;
 int strncpy (char*,char*,int) ;

void ReverseIP( PCHAR pIP, PCHAR pReturn )
{
    int i;
    int j;
    int k = 0;

    j = strlen( pIP ) - 1;
    i = j;





    for( ; i > 0; i -= 1 ) if( '.' == pIP[i] ) break;

    strncpy( &pReturn[k], &pIP[i + 1], (j - i) );
    k += (j - i);

    pReturn[k] = '.';
    k += 1;

    i -= 1;
    j = i;


    for( ; i > 0; i -= 1 ) if( '.' == pIP[i] ) break;

    strncpy( &pReturn[k], &pIP[i + 1], (j - i) );
    k += (j - i);

    pReturn[k] = '.';
    k += 1;

    i -= 1;
    j = i;


    for( ; i > 0; i -= 1 ) if( '.' == pIP[i] ) break;

    strncpy( &pReturn[k], &pIP[i + 1], (j - i) );
    k += (j - i);

    pReturn[k] = '.';
    k += 1;

    i -= 1;
    j = i;


    for( ; i > 0; i -= 1 );

    strncpy( &pReturn[k], &pIP[i], (j - i) + 1 );
    k += (j - i) + 1;

    pReturn[k] = '\0';
}
