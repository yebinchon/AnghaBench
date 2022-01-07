
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EMSG (int ) ;
 int FALSE ;
 int TRUE ;
 int _ (char*) ;
 scalar_t__ allbuf_lock ;

int
allbuf_locked()
{
    if (allbuf_lock > 0)
    {
 EMSG(_("E811: Not allowed to change buffer information now"));
 return TRUE;
    }
    return FALSE;
}
