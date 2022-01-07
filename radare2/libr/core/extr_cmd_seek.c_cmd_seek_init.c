
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RCore ;


 int DEFINE_CMD_DESCRIPTOR (int *,int ) ;
 int s ;
 int sC ;
 int sl ;
 int ss ;

__attribute__((used)) static void cmd_seek_init(RCore *core) {
 DEFINE_CMD_DESCRIPTOR (core, s);
 DEFINE_CMD_DESCRIPTOR (core, sC);
 DEFINE_CMD_DESCRIPTOR (core, sl);
 DEFINE_CMD_DESCRIPTOR (core, ss);
}
