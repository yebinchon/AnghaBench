
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
__attribute__((used)) static const char* symt_get_tag_str(DWORD tag)
{
    switch (tag)
    {
    case 136: return "SymTagNull";
    case 145: return "SymTagExe";
    case 153: return "SymTagCompiland";
    case 152: return "SymTagCompilandDetails";
    case 151: return "SymTagCompilandEnv";
    case 141: return "SymTagFunction";
    case 154: return "SymTagBlock";
    case 148: return "SymTagData";
    case 158: return "SymTagAnnotation";
    case 138: return "SymTagLabel";
    case 134: return "SymTagPublicSymbol";
    case 131: return "SymTagUDT";
    case 146: return "SymTagEnum";
    case 139: return "SymTagFunctionType";
    case 135: return "SymTagPointerType";
    case 157: return "SymTagArrayType";
    case 155: return "SymTagBaseType";
    case 132: return "SymTagTypedef,";
    case 156: return "SymTagBaseClass";
    case 144: return "SymTagFriend";
    case 140: return "SymTagFunctionArgType,";
    case 142: return "SymTagFuncDebugStart,";
    case 143: return "SymTagFuncDebugEnd";
    case 130: return "SymTagUsingNamespace,";
    case 128: return "SymTagVTableShape";
    case 129: return "SymTagVTable";
    case 150: return "SymTagCustom";
    case 133: return "SymTagThunk";
    case 149: return "SymTagCustomType";
    case 137: return "SymTagManagedType";
    case 147: return "SymTagDimension";
    default: return "---";
    }
}
