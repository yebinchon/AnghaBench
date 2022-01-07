
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RCore ;


 int DEFINE_CMD_DESCRIPTOR (int *,int ) ;
 int i ;
 int id ;

__attribute__((used)) static void cmd_info_init(RCore *core) {
 DEFINE_CMD_DESCRIPTOR (core, i);
 DEFINE_CMD_DESCRIPTOR (core, id);
}
