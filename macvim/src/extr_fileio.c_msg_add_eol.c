
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IObuff ;
 int SHM_LAST ;
 int STRCAT (int ,int ) ;
 int _ (char*) ;
 scalar_t__ shortmess (int ) ;

__attribute__((used)) static void
msg_add_eol()
{
    STRCAT(IObuff, shortmess(SHM_LAST) ? _("[noeol]") : _("[Incomplete last line]"));
}
