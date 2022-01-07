
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LLVMValueRef ;
typedef int * LLVMTypeRef ;
typedef int LLVMModuleRef ;


 int Assert (int ) ;
 int ERROR ;
 int * LLVMGetElementType (int *) ;
 int LLVMGetNamedGlobal (int ,char const*) ;
 int * LLVMTypeOf (int ) ;
 int elog (int ,char*,char const*) ;

__attribute__((used)) static LLVMTypeRef
load_type(LLVMModuleRef mod, const char *name)
{
 LLVMValueRef value;
 LLVMTypeRef typ;


 value = LLVMGetNamedGlobal(mod, name);
 if (!value)
  elog(ERROR, "type %s is unknown", name);


 typ = LLVMTypeOf(value);
 Assert(typ != ((void*)0));
 typ = LLVMGetElementType(typ);
 Assert(typ != ((void*)0));
 return typ;
}
