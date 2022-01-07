
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RCore ;


 int DEFINE_CMD_DESCRIPTOR (int *,int ) ;
 int e ;
 int ec ;

__attribute__((used)) static void cmd_eval_init(RCore *core) {
 DEFINE_CMD_DESCRIPTOR (core, e);
 DEFINE_CMD_DESCRIPTOR (core, ec);
}
