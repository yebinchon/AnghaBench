
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
 int LLVMGetNamedFunction (int ,char const*) ;
 int * LLVMGetReturnType (int *) ;
 int * LLVMTypeOf (int ) ;
 int elog (int ,char*,char const*) ;

__attribute__((used)) static LLVMTypeRef
load_return_type(LLVMModuleRef mod, const char *name)
{
 LLVMValueRef value;
 LLVMTypeRef typ;


 value = LLVMGetNamedFunction(mod, name);
 if (!value)
  elog(ERROR, "function %s is unknown", name);


 typ = LLVMTypeOf(value);
 Assert(typ != ((void*)0));

 typ = LLVMGetElementType(typ);
 Assert(typ != ((void*)0));

 typ = LLVMGetReturnType(typ);
 Assert(typ != ((void*)0));

 return typ;
}
