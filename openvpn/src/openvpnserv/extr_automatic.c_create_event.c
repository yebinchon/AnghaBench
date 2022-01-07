
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct security_attributes {int sa; } ;
typedef int LPCTSTR ;
typedef int * HANDLE ;
typedef int BOOL ;


 int * CreateEvent (int *,int ,int ,int ) ;
 int init_security_attributes_allow_all (struct security_attributes*) ;

HANDLE
create_event(LPCTSTR name, bool allow_all, bool initial_state, bool manual_reset)
{
    if (allow_all)
    {
        struct security_attributes sa;
        if (!init_security_attributes_allow_all(&sa))
        {
            return ((void*)0);
        }
        return CreateEvent(&sa.sa, (BOOL)manual_reset, (BOOL)initial_state, name);
    }
    else
    {
        return CreateEvent(((void*)0), (BOOL)manual_reset, (BOOL)initial_state, name);
    }
}
