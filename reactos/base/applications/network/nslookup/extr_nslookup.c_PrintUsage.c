
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _T (char*) ;
 int _tprintf (int ) ;

void PrintUsage()
{
    _tprintf( _T("Usage:\n"
                 "   nslookup [-opt ...]             # interactive mode using"
                 " default server\n   nslookup [-opt ...] - server    #"
                 " interactive mode using 'server'\n   nslookup [-opt ...]"
                 " host        # just look up 'host' using default server\n"
                 "   nslookup [-opt ...] host server # just look up 'host'"
                 " using 'server'\n") );
}
