
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LLVMValueRef ;
typedef int LLVMAttributeRef ;


 int LLVMAddAttributeAtIndex (int ,int ,int ) ;
 int LLVMAttributeFunctionIndex ;
 int LLVMGetAttributeCountAtIndex (int ,int ) ;
 int LLVMGetAttributesAtIndex (int ,int ,int *) ;
 int * palloc (int) ;

void
llvm_copy_attributes(LLVMValueRef v_from, LLVMValueRef v_to)
{
 int num_attributes;
 int attno;
 LLVMAttributeRef *attrs;

 num_attributes =
  LLVMGetAttributeCountAtIndex(v_from, LLVMAttributeFunctionIndex);

 attrs = palloc(sizeof(LLVMAttributeRef) * num_attributes);
 LLVMGetAttributesAtIndex(v_from, LLVMAttributeFunctionIndex, attrs);

 for (attno = 0; attno < num_attributes; attno++)
 {
  LLVMAddAttributeAtIndex(v_to, LLVMAttributeFunctionIndex,
        attrs[attno]);
 }
}
