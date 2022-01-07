
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut16 ;


 int r_bin_java_calculate_method_access_value (char const*) ;
 int r_cons_printf (char*,char const*,int ) ;

__attribute__((used)) static int r_cmd_java_print_method_access_flags_value( const char * flags ){
 ut16 result = r_bin_java_calculate_method_access_value (flags);
 r_cons_printf ("Access Value for %s = 0x%04x\n", flags, result);
 return 1;
}
