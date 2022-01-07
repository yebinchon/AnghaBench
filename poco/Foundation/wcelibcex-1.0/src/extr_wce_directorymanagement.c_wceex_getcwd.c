
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CP_ACP ;
 int Cwd ;
 int ENOMEM ;
 int GetLastError () ;
 scalar_t__ InitCwd () ;
 int WideCharToMultiByte (int ,int ,int ,int,char*,int,int *,int *) ;
 int errno ;
 scalar_t__ malloc (int) ;

char* wceex_getcwd( char *buffer, int maxlen )
{
    if( !buffer && (buffer = (char*)malloc(maxlen)) == ((void*)0) )
    {
        errno = ENOMEM;
        return ((void*)0);
    }
    if( InitCwd() )
        return ((void*)0);
 if( !WideCharToMultiByte( CP_ACP, 0, Cwd, -1, buffer, maxlen, ((void*)0), ((void*)0) ) )
    {
        errno = GetLastError();
        return ((void*)0);
    }
    return buffer;
}
