
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int to ;
typedef int from ;
struct TYPE_3__ {int config; } ;
typedef TYPE_1__ RCore ;


 int prompt_read (char*,char*,int) ;
 int r_config_set (int ,char*,char*) ;

__attribute__((used)) static void setdiff(RCore *core) {
 char from[64], to[64];
 prompt_read ("diff from: ", from, sizeof (from));
 r_config_set (core->config, "diff.from", from);
 prompt_read ("diff to: ", to, sizeof (to));
 r_config_set (core->config, "diff.to", to);
}
