
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int TRUE ;
 scalar_t__ emsg_off ;
 scalar_t__ emsg_skip ;
 int p_debug ;
 int * vim_strchr (int ,char) ;

int
emsg_not_now()
{
    if ((emsg_off > 0 && vim_strchr(p_debug, 'm') == ((void*)0)
       && vim_strchr(p_debug, 't') == ((void*)0))



     )
 return TRUE;
    return FALSE;
}
