
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int DefaultServerAddress; int DefaultServer; } ;


 TYPE_1__ State ;
 int _T (char*) ;
 int _tprintf (int ,...) ;

void InteractiveMode()
{
    _tprintf( _T("Default Server:  %s\n"), State.DefaultServer );
    _tprintf( _T("Address:  %s\n\n"), State.DefaultServerAddress );



    _tprintf( _T("ERROR: Feature not implemented.\n") );
}
