
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PsqlScanState ;
typedef int PQExpBuffer ;


 int destroyPQExpBuffer (int ) ;
 int gather_boolean_expression (int ) ;

__attribute__((used)) static void
ignore_boolean_expression(PsqlScanState scan_state)
{
 PQExpBuffer buf = gather_boolean_expression(scan_state);

 destroyPQExpBuffer(buf);
}
