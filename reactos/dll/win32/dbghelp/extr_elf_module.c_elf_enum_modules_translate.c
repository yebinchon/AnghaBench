
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elf_enum_user {int user; int (* cb ) (int const*,unsigned long,int ) ;} ;
typedef int WCHAR ;
typedef int BOOL ;


 int stub1 (int const*,unsigned long,int ) ;

__attribute__((used)) static BOOL elf_enum_modules_translate(const WCHAR* name, unsigned long load_addr,
                                       unsigned long dyn_addr, BOOL is_system, void* user)
{
    struct elf_enum_user* eeu = user;
    return eeu->cb(name, load_addr, eeu->user);
}
