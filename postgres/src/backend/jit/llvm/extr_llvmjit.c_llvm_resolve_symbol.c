
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int Assert (char*) ;
 int ERROR ;
 scalar_t__ LLVMSearchForAddressOfSymbol (char const*) ;
 int WARNING ;
 int elog (int ,char*,char const*) ;
 int llvm_split_symbol_name (char const*,char**,char**) ;
 scalar_t__ load_external_function (char*,char*,int,int *) ;
 int pfree (char*) ;

__attribute__((used)) static uint64_t
llvm_resolve_symbol(const char *symname, void *ctx)
{
 uintptr_t addr;
 char *funcname;
 char *modname;
 llvm_split_symbol_name(symname, &modname, &funcname);


 Assert(funcname);

 if (modname)
  addr = (uintptr_t) load_external_function(modname, funcname,
              1, ((void*)0));
 else
  addr = (uintptr_t) LLVMSearchForAddressOfSymbol(symname);

 pfree(funcname);
 if (modname)
  pfree(modname);


 if (!addr)
  elog(WARNING, "failed to resolve name %s", symname);

 return (uint64_t) addr;
}
