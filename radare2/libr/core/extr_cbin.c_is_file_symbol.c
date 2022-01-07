
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; } ;
typedef TYPE_1__ RBinSymbol ;


 int R_BIN_TYPE_FILE_STR ;
 int strcmp (scalar_t__,int ) ;

__attribute__((used)) static bool is_file_symbol(RBinSymbol *s) {

 return (s && s->type && !strcmp (s->type, R_BIN_TYPE_FILE_STR));
}
