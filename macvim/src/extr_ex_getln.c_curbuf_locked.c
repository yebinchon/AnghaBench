
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EMSG (int ) ;
 int TRUE ;
 int _ (char*) ;
 int allbuf_locked () ;
 scalar_t__ curbuf_lock ;

int
curbuf_locked()
{
    if (curbuf_lock > 0)
    {
 EMSG(_("E788: Not allowed to edit another buffer now"));
 return TRUE;
    }
    return allbuf_locked();
}
