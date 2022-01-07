
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NOTICE ;
 int ereport (int ,int ) ;
 int errmsg (char*,char const*) ;

__attribute__((used)) static void
show_debug(const char *msg)
{
 ereport(NOTICE, (errmsg("dbg: %s", msg)));
}
