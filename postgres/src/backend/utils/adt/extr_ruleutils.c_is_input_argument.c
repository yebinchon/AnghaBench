
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const PROARGMODE_IN ;
 char const PROARGMODE_INOUT ;
 char const PROARGMODE_VARIADIC ;

__attribute__((used)) static bool
is_input_argument(int nth, const char *argmodes)
{
 return (!argmodes
   || argmodes[nth] == PROARGMODE_IN
   || argmodes[nth] == PROARGMODE_INOUT
   || argmodes[nth] == PROARGMODE_VARIADIC);
}
