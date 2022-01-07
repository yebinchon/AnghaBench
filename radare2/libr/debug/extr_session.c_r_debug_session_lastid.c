
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sessions; } ;
typedef TYPE_1__ RDebug ;


 int r_list_length (int ) ;

__attribute__((used)) static int r_debug_session_lastid(RDebug *dbg) {
 return r_list_length (dbg->sessions);
}
