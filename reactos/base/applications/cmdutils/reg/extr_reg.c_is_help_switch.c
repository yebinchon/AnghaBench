
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 scalar_t__ is_switch (int const*,char) ;

__attribute__((used)) static BOOL is_help_switch(const WCHAR *s)
{
    if (is_switch(s, '?') || is_switch(s, 'h'))
        return TRUE;

    return FALSE;
}
