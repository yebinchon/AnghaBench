
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PGconn ;


 unsigned int cursor_number ;

unsigned int
GetCursorNumber(PGconn *conn)
{
 return ++cursor_number;
}
