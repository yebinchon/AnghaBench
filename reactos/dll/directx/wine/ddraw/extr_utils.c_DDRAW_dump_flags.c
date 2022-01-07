
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flag_info {int dummy; } ;
typedef int DWORD ;


 int DDRAW_dump_flags_nolf (int ,struct flag_info const*,size_t) ;
 int TRACE (char*) ;

__attribute__((used)) static void DDRAW_dump_flags(DWORD flags, const struct flag_info *names, size_t num_names)
{
    DDRAW_dump_flags_nolf(flags, names, num_names);
    TRACE("\n");
}
