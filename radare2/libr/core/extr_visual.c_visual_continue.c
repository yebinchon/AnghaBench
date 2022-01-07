
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RCore ;


 int r_core_cmd (int *,char*,int ) ;

__attribute__((used)) static void visual_continue(RCore *core) {
 r_core_cmd (core, "dc", 0);
}
