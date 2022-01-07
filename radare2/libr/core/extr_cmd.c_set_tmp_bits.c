
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fixedbits; int config; } ;
typedef TYPE_1__ RCore ;


 int eprintf (char*) ;
 int r_config_get (int ,char*) ;
 int r_config_set_i (int ,char*,int) ;
 char* strdup (int ) ;

__attribute__((used)) static bool set_tmp_bits(RCore *core, int bits, char **tmpbits) {
 if (!tmpbits) {
  eprintf ("tmpbits should be set\n");
 }
 *tmpbits = strdup (r_config_get (core->config, "asm.bits"));
 r_config_set_i (core->config, "asm.bits", bits);
 core->fixedbits = 1;
 return 1;
}
