
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {int tag_name; } ;
struct TYPE_12__ {int type; int length; } ;
struct TYPE_11__ {int ret_type; } ;
struct TYPE_10__ {int type; } ;
struct TYPE_9__ {int tag_name; } ;
struct TYPE_14__ {int kind; int attr; TYPE_5__ record; TYPE_4__ array; TYPE_3__ func; TYPE_2__ pointer; TYPE_1__ enumeration; } ;
typedef TYPE_6__ zend_ffi_type ;
typedef int zend_ffi_ctype_name_buf ;
typedef int str ;


 int MAX_LENGTH_OF_LONG ;
 int ZEND_ASSERT (int ) ;
 int ZEND_FFI_ATTR_INCOMPLETE_ARRAY ;
 int ZEND_FFI_ATTR_UNION ;
 int ZEND_FFI_ATTR_VLA ;
 TYPE_6__* ZEND_FFI_TYPE (int ) ;
 int ZSTR_LEN (int ) ;
 char const* ZSTR_VAL (int ) ;
 int strlen (char const*) ;
 int zend_ffi_ctype_name_append (int *,char*,int) ;
 int zend_ffi_ctype_name_prepend (int *,char const*,int) ;
 char* zend_print_long_to_buf (int ,int ) ;

__attribute__((used)) static int zend_ffi_ctype_name(zend_ffi_ctype_name_buf *buf, const zend_ffi_type *type)
{
 const char *name = ((void*)0);
 int is_ptr = 0;

 while (1) {
  switch (type->kind) {
   case 128:
    name = "void";
    break;
   case 141:
    name = "float";
    break;
   case 143:
    name = "double";
    break;





   case 129:
    name = "uint8_t";
    break;
   case 134:
    name = "int8_t";
    break;
   case 132:
    name = "uint16_t";
    break;
   case 137:
    name = "int16_t";
    break;
   case 131:
    name = "uint32_t";
    break;
   case 136:
    name = "int32_t";
    break;
   case 130:
    name = "uint64_t";
    break;
   case 135:
    name = "int64_t";
    break;
   case 142:
    if (type->enumeration.tag_name) {
     zend_ffi_ctype_name_prepend(buf, ZSTR_VAL(type->enumeration.tag_name), ZSTR_LEN(type->enumeration.tag_name));
    } else {
     zend_ffi_ctype_name_prepend(buf, "<anonymous>", sizeof("<anonymous>")-1);
    }
    name = "enum ";
    break;
   case 145:
    name = "bool";
    break;
   case 144:
    name = "char";
    break;
   case 138:
    if (!zend_ffi_ctype_name_prepend(buf, "*", 1)) {
     return 0;
    }
    is_ptr = 1;
    type = ZEND_FFI_TYPE(type->pointer.type);
    break;
   case 140:
    if (is_ptr) {
     is_ptr = 0;
     if (!zend_ffi_ctype_name_prepend(buf, "(", 1)
      || !zend_ffi_ctype_name_append(buf, ")", 1)) {
      return 0;
     }
    }
    if (!zend_ffi_ctype_name_append(buf, "(", 1)
     || !zend_ffi_ctype_name_append(buf, ")", 1)) {
     return 0;
    }
    type = ZEND_FFI_TYPE(type->func.ret_type);
    break;
   case 146:
    if (is_ptr) {
     is_ptr = 0;
     if (!zend_ffi_ctype_name_prepend(buf, "(", 1)
      || !zend_ffi_ctype_name_append(buf, ")", 1)) {
      return 0;
     }
    }
    if (!zend_ffi_ctype_name_append(buf, "[", 1)) {
     return 0;
    }
    if (type->attr & ZEND_FFI_ATTR_VLA) {
     if (!zend_ffi_ctype_name_append(buf, "*", 1)) {
      return 0;
     }
    } else if (!(type->attr & ZEND_FFI_ATTR_INCOMPLETE_ARRAY)) {
     char str[MAX_LENGTH_OF_LONG + 1];
     char *s = zend_print_long_to_buf(str + sizeof(str) - 1, type->array.length);

     if (!zend_ffi_ctype_name_append(buf, s, strlen(s))) {
      return 0;
     }
    }
    if (!zend_ffi_ctype_name_append(buf, "]", 1)) {
     return 0;
    }
    type = ZEND_FFI_TYPE(type->array.type);
    break;
   case 133:
    if (type->attr & ZEND_FFI_ATTR_UNION) {
     if (type->record.tag_name) {
      zend_ffi_ctype_name_prepend(buf, ZSTR_VAL(type->record.tag_name), ZSTR_LEN(type->record.tag_name));
     } else {
      zend_ffi_ctype_name_prepend(buf, "<anonymous>", sizeof("<anonymous>")-1);
     }
     name = "union ";
    } else {
     if (type->record.tag_name) {
      zend_ffi_ctype_name_prepend(buf, ZSTR_VAL(type->record.tag_name), ZSTR_LEN(type->record.tag_name));
     } else {
      zend_ffi_ctype_name_prepend(buf, "<anonymous>", sizeof("<anonymous>")-1);
     }
     name = "struct ";
    }
    break;
   default:
    ZEND_ASSERT(0);
  }
  if (name) {
   break;
  }
 }






 return zend_ffi_ctype_name_prepend(buf, name, strlen(name));
}
