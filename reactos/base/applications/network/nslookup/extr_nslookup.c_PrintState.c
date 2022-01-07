
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int port; int type; int Class; int root; int domain; int* srchlist; scalar_t__ ixfrver; int MSxfr; scalar_t__ retry; scalar_t__ timeout; int ignoretc; int vc; int d2; int recurse; int search; int defname; int debug; } ;


 TYPE_1__ State ;
 int _T (char*) ;
 int _tprintf (int ,...) ;

void PrintState()
{
    _tprintf( _T("Default Server:  (null)\n\n") );
    _tprintf( _T("Set options:\n") );

    _tprintf( _T("  ") );
    if( !State.debug ) _tprintf( _T("no") );
    _tprintf( _T("debug\n") );

    _tprintf( _T("  ") );
    if( !State.defname ) _tprintf( _T("no") );
    _tprintf( _T("defname\n") );

    _tprintf( _T("  ") );
    if( !State.search ) _tprintf( _T("no") );
    _tprintf( _T("search\n") );

    _tprintf( _T("  ") );
    if( !State.recurse ) _tprintf( _T("no") );
    _tprintf( _T("recurse\n") );

    _tprintf( _T("  ") );
    if( !State.d2 ) _tprintf( _T("no") );
    _tprintf( _T("d2\n") );

    _tprintf( _T("  ") );
    if( !State.vc ) _tprintf( _T("no") );
    _tprintf( _T("vc\n") );

    _tprintf( _T("  ") );
    if( !State.ignoretc ) _tprintf( _T("no") );
    _tprintf( _T("ignoretc\n") );

    _tprintf( _T("  port=%d\n"), State.port );
    _tprintf( _T("  type=%s\n"), State.type );
    _tprintf( _T("  class=%s\n"), State.Class );
    _tprintf( _T("  timeout=%d\n"), (int)State.timeout );
    _tprintf( _T("  retry=%d\n"), (int)State.retry );
    _tprintf( _T("  root=%s\n"), State.root );
    _tprintf( _T("  domain=%s\n"), State.domain );

    _tprintf( _T("  ") );
    if( !State.MSxfr ) _tprintf( _T("no") );
    _tprintf( _T("MSxfr\n") );

    _tprintf( _T("  IXFRversion=%d\n"), (int)State.ixfrver );

    _tprintf( _T("  srchlist=%s\n\n"), State.srchlist[0] );
}
