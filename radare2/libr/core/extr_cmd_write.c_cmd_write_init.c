
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RCore ;


 int DEFINE_CMD_DESCRIPTOR (int *,int ) ;
 int w ;
 int wA ;
 int wa ;
 int wc ;
 int we ;
 int wo ;
 int wop ;
 int wp ;
 int wt ;
 int wv ;
 int wx ;

__attribute__((used)) static void cmd_write_init(RCore *core) {
 DEFINE_CMD_DESCRIPTOR (core, w);
 DEFINE_CMD_DESCRIPTOR (core, wa);
 DEFINE_CMD_DESCRIPTOR (core, wA);
 DEFINE_CMD_DESCRIPTOR (core, wc);
 DEFINE_CMD_DESCRIPTOR (core, we);
 DEFINE_CMD_DESCRIPTOR (core, wo);
 DEFINE_CMD_DESCRIPTOR (core, wop);
 DEFINE_CMD_DESCRIPTOR (core, wp);
 DEFINE_CMD_DESCRIPTOR (core, wt);
 DEFINE_CMD_DESCRIPTOR (core, wv);
 DEFINE_CMD_DESCRIPTOR (core, wx);
}
