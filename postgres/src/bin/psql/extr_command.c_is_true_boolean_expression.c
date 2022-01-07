
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; } ;
typedef int PsqlScanState ;
typedef TYPE_1__* PQExpBuffer ;


 int ParseVariableBool (int ,char const*,int*) ;
 int destroyPQExpBuffer (TYPE_1__*) ;
 TYPE_1__* gather_boolean_expression (int ) ;

__attribute__((used)) static bool
is_true_boolean_expression(PsqlScanState scan_state, const char *name)
{
 PQExpBuffer buf = gather_boolean_expression(scan_state);
 bool value = 0;
 bool success = ParseVariableBool(buf->data, name, &value);

 destroyPQExpBuffer(buf);
 return success && value;
}
