
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* argv0 ;
 int memmove (char*,char*,int) ;
 int memset (char*,int ,int) ;
 int strlen (char*) ;

void setArgv0( int argc, char * argv[] )
{
    char * p;
    int i;
    argv0 = argv[0] + strlen( argv[0] );
    p = argv0;
    while(( p > argv[0] )&&( p[-1] != '/'))
        --p;
    if ( p > argv[0] )
    {
        memmove( argv[0], p, argv0 - p );
        memset( argv[0] + ( argv0 - p ), 0, p - argv[0] );
        argv0 = argv[0] + (argv0 - p);
    }
    for( i = 1; i < argc; ++i )
    {
        memset( argv[i], 0, strlen( argv[i] ) );
    }
}
