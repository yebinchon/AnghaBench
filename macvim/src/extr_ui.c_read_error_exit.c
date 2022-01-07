
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IObuff ;
 int STRCPY (int ,int ) ;
 int _ (char*) ;
 int getout (int ) ;
 int preserve_exit () ;
 scalar_t__ silent_mode ;

void
read_error_exit()
{
    if (silent_mode)
 getout(0);
    STRCPY(IObuff, _("Vim: Error reading input, exiting...\n"));
    preserve_exit();
}
