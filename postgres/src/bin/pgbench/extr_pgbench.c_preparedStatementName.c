
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (char*,char*,int,int) ;

__attribute__((used)) static void
preparedStatementName(char *buffer, int file, int state)
{
 sprintf(buffer, "P%d_%d", file, state);
}
