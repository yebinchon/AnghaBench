
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ConnectToSniffEmacs () ;
 int _ (char*) ;
 scalar_t__* init_cmds ;
 scalar_t__ sniff_connected ;
 int vi_error_msg (int ) ;
 int vi_exec_cmd (scalar_t__) ;

__attribute__((used)) static void
sniff_connect()
{
    if (sniff_connected)
 return;
    if (ConnectToSniffEmacs())
 vi_error_msg(_("E276: Error connecting to SNiFF+"));
    else
    {
 int i;

 for (i = 0; init_cmds[i]; i++)
     vi_exec_cmd(init_cmds[i]);
    }
}
