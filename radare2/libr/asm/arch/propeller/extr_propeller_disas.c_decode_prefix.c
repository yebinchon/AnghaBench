
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ut8 ;
typedef int ut32 ;
struct propeller_cmd {char* prefix; } ;


 char** conditions ;
 int snprintf (char*,int,char*,char*) ;

__attribute__((used)) static void decode_prefix (struct propeller_cmd *cmd, ut32 instr) {
 ut8 prefix = (instr >> 18) & 0xF;

 snprintf (cmd->prefix, 15, "%s", conditions[prefix]);
 cmd->prefix[15] = '\0';
}
