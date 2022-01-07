
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XMLRPC_VECTOR_TYPE ;
typedef int XMLRPC_VALUE_TYPE ;
const char* type_to_str(XMLRPC_VALUE_TYPE type, XMLRPC_VECTOR_TYPE vtype) {
    switch(type) {
       case 134:
          return "none";
       case 136:
          return "empty";
       case 140:
          return "base64";
       case 139:
          return "boolean";
       case 138:
          return "datetime";
       case 137:
          return "double";
       case 135:
          return "int";
       case 133:
          return "string";
       case 132:
          switch(vtype) {
             case 129:
                return "none";
             case 131:
                return "array";
             case 130:
                return "mixed vector (struct)";
             case 128:
                return "struct";
          }
    }
    return "unknown";
}
