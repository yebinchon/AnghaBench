
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int desc; int script; } ;
typedef TYPE_1__ BuiltinScript ;


 int ParseScript (int ,int ,int) ;

__attribute__((used)) static void
process_builtin(const BuiltinScript *bi, int weight)
{
 ParseScript(bi->script, bi->desc, weight);
}
