
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MyProcPort ;
 int pq_setkeepalivesidle (int,int ) ;

__attribute__((used)) static void
assign_tcp_keepalives_idle(int newval, void *extra)
{
 (void) pq_setkeepalivesidle(newval, MyProcPort);
}
