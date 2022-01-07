
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TCHAR ;


 int PrintRoutes () ;
 int Usage () ;
 int _T (char*) ;
 int _tcscmp (int *,int ) ;
 int add_route (int,int **) ;
 int del_route (int,int **) ;

int _tmain( int argc, TCHAR **argv )
{
    if( argc < 2 )
        return Usage();
    else if ( !_tcscmp( argv[1], _T("print") ) )
        return PrintRoutes();
    else if( !_tcscmp( argv[1], _T("add") ) )
        return add_route( argc-2, argv+2 );
    else if( !_tcscmp( argv[1], _T("delete") ) )
        return del_route( argc-2, argv+2 );
    else
        return Usage();
}
