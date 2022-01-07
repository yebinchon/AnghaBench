
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCTSTR ;
typedef int INT ;


 int GetEnvVarOrSpecial (int ) ;
 int _tcstol (int ,int *,int ) ;

__attribute__((used)) static INT
seta_identval(LPCTSTR ident)
{
    LPCTSTR identVal = GetEnvVarOrSpecial ( ident );
    if ( !identVal )
        return 0;
    else
        return _tcstol ( identVal, ((void*)0), 0 );
}
