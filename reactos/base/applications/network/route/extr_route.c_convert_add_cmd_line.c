
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* dwForwardNextHop; int dwForwardMetric1; void* dwForwardMask; void* dwForwardDest; } ;
typedef char TCHAR ;
typedef TYPE_1__* PMIB_IPFORWARDROW ;


 int FALSE ;
 int TRUE ;
 int _T (char*) ;
 int _tcscmp (char*,int ) ;
 int _ttoi (char*) ;
 void* inet_addr (char*) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static int convert_add_cmd_line( PMIB_IPFORWARDROW RowToAdd,
              int argc, TCHAR **argv ) {
    int i;




    if( argc > 1 )
    {




        RowToAdd->dwForwardDest = inet_addr( argv[0] );

    }
    else
        return FALSE;
    for( i = 1; i < argc; i++ )
    {
        if( !_tcscmp( argv[i], _T("mask") ) )
        {
            i++; if( i >= argc ) return FALSE;




            RowToAdd->dwForwardMask = inet_addr( argv[i] );

        }
        else if( !_tcscmp( argv[i], _T("metric") ) )
        {
            i++;
            if( i >= argc )
                return FALSE;
            RowToAdd->dwForwardMetric1 = _ttoi( argv[i] );
        }
        else
        {




            RowToAdd->dwForwardNextHop = inet_addr( argv[i] );

        }
    }

    return TRUE;
}
