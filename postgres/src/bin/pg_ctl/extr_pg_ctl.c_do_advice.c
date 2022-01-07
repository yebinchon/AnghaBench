
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 int progname ;
 int write_stderr (int ,int ) ;

__attribute__((used)) static void
do_advice(void)
{
 write_stderr(_("Try \"%s --help\" for more information.\n"), progname);
}
