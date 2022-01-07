
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int PG_CMD_PUTS (char*) ;

__attribute__((used)) static void
vacuum_db(FILE *cmdfd)
{

 PG_CMD_PUTS("ANALYZE;\n\nVACUUM FREEZE;\n\n");
}
