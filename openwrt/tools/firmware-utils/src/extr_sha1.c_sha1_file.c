
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int uchar ;
typedef int sha1_context ;
typedef int buf ;
typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char*,char*) ;
 size_t fread (int *,int,int,int *) ;
 int sha1_finish (int *,int *) ;
 int sha1_starts (int *) ;
 int sha1_update (int *,int *,int ) ;

int sha1_file( char *filename, uchar digest[20] )
{
    FILE *f;
    size_t n;
    sha1_context ctx;
    uchar buf[1024];

    if( ( f = fopen( filename, "rb" ) ) == ((void*)0) )
        return( 1 );

    sha1_starts( &ctx );

    while( ( n = fread( buf, 1, sizeof( buf ), f ) ) > 0 )
        sha1_update( &ctx, buf, (uint) n );

    sha1_finish( &ctx, digest );

    fclose( f );
    return( 0 );
}
