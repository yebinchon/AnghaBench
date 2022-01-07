
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mrb_value ;
typedef int mrb_state ;
typedef scalar_t__ mrb_int ;
struct TYPE_3__ {int type; int d; char* s; int C; int n; scalar_t__ i; int f; int c; } ;
typedef TYPE_1__ VFNative ;
typedef int VFArgumentType ;
 int E_ARGUMENT_ERROR ;
 size_t RSTRING_LEN (int ) ;
 int * RSTRING_PTR (int ) ;
 int memcpy (char*,int *,size_t) ;
 int mrb_class_ptr (int ) ;
 int mrb_data_init (int ,TYPE_1__*,int *) ;
 scalar_t__ mrb_fixnum (int ) ;
 int mrb_float (int ) ;
 int mrb_get_args (int *,char*,scalar_t__*,int *) ;
 scalar_t__ mrb_malloc (int *,int) ;
 int mrb_raise (int *,int ,char*) ;
 int mrb_symbol (int ) ;
 int native_data_type ;

__attribute__((used)) static mrb_value
native_initialize(mrb_state *mrb, mrb_value self)
{
  VFNative data, *datap;
  mrb_int type;
  mrb_value obj;

  mrb_get_args(mrb, "io", &type, &obj);
  data.type = (VFArgumentType)type;
  switch (data.type) {
    case 133: data.c = RSTRING_PTR(obj)[0]; break;
    case 132: data.d = (int)mrb_fixnum(obj); break;
    case 131: data.f = mrb_float(obj); break;
    case 130: data.i = mrb_fixnum(obj); break;

    case 129: data.n = mrb_symbol(obj); break;
    case 128: data.s = (char*)mrb_malloc(mrb, RSTRING_LEN(obj) + 1);
                memcpy(data.s, RSTRING_PTR(obj), RSTRING_LEN(obj));
                data.s[RSTRING_LEN(obj)] = '\0'; break;
    case 134: data.C = mrb_class_ptr(obj); break;
    default: mrb_raise(mrb, E_ARGUMENT_ERROR, "unknown type");
  }
  datap = (VFNative*)mrb_malloc(mrb, sizeof(VFNative));
  *datap = data;
  mrb_data_init(self, datap, &native_data_type);
  return self;
}
