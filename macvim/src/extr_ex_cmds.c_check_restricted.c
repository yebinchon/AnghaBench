
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EMSG (int ) ;
 int FALSE ;
 int TRUE ;
 int _ (char*) ;
 scalar_t__ restricted ;

int
check_restricted()
{
    if (restricted)
    {
 EMSG(_("E145: Shell commands not allowed in rvim"));
 return TRUE;
    }
    return FALSE;
}
