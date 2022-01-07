
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;






 int SS_TYPEMASK ;
 int TRUE ;

__attribute__((used)) static BOOL hasTextStyle( DWORD style )
{
    switch (style & SS_TYPEMASK)
    {
        case 128:
        case 132:
        case 131:
        case 133:
        case 129:
        case 130:
            return TRUE;
    }

    return FALSE;
}
