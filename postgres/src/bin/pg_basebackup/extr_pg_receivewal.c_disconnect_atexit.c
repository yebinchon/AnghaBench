
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PQfinish (int *) ;
 int * conn ;

__attribute__((used)) static void
disconnect_atexit(void)
{
 if (conn != ((void*)0))
  PQfinish(conn);
}
