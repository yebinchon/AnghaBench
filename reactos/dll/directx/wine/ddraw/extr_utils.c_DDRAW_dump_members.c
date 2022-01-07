
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct member_info {int val; int offset; int (* func ) (char const*) ;int name; } ;
typedef int DWORD ;


 int TRACE (char*,int ) ;
 int stub1 (char const*) ;

__attribute__((used)) static void DDRAW_dump_members(DWORD flags, const void *data, const struct member_info *mems, size_t num_mems)
{
    unsigned int i;

    for (i=0; i < num_mems; i++)
    {
        if (mems[i].val & flags)
        {
            TRACE(" - %s : ", mems[i].name);
            mems[i].func((const char *)data + mems[i].offset);
        }
    }
}
