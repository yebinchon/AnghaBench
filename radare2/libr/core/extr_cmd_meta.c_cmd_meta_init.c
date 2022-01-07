
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RCore ;


 int C ;
 int CC ;
 int CS ;
 int Cs ;
 int Cvb ;
 int Cvr ;
 int Cvs ;
 int DEFINE_CMD_DESCRIPTOR (int *,int ) ;

__attribute__((used)) static void cmd_meta_init(RCore *core) {
 DEFINE_CMD_DESCRIPTOR (core, C);
 DEFINE_CMD_DESCRIPTOR (core, CC);
 DEFINE_CMD_DESCRIPTOR (core, CS);
 DEFINE_CMD_DESCRIPTOR (core, Cs);
 DEFINE_CMD_DESCRIPTOR (core, Cvb);
 DEFINE_CMD_DESCRIPTOR (core, Cvr);
 DEFINE_CMD_DESCRIPTOR (core, Cvs);
}
