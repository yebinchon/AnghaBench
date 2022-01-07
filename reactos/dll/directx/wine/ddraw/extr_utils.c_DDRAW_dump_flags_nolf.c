
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flag_info {int val; int name; } ;
typedef int DWORD ;


 int TRACE (char*,int ) ;

__attribute__((used)) static void DDRAW_dump_flags_nolf(DWORD flags, const struct flag_info *names, size_t num_names)
{
    unsigned int i;

    for (i=0; i < num_names; i++)
        if ((flags & names[i].val) ||
            ((!flags) && (!names[i].val)))
            TRACE("%s ", names[i].name);
}
