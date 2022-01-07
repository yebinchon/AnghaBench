
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_int ;


 scalar_t__ mrb_fixnum_p (int ) ;
 scalar_t__ mrb_float_p (int ) ;
 int mrb_get_args (int *,char*,int *) ;
 scalar_t__ mrb_istruct_ptr (int ) ;
 int mrb_istruct_size () ;
 scalar_t__ mrb_string_p (int ) ;
 int strncpy (char*,char*,int) ;

__attribute__((used)) static mrb_value
istruct_test_initialize(mrb_state *mrb, mrb_value self)
{
  char *string = (char*)mrb_istruct_ptr(self);
  mrb_int size = mrb_istruct_size();
  mrb_value object;
  mrb_get_args(mrb, "o", &object);

  if (mrb_fixnum_p(object)) {
    strncpy(string, "fixnum", size-1);
  }

  else if (mrb_float_p(object)) {
    strncpy(string, "float", size-1);
  }

  else if (mrb_string_p(object)) {
    strncpy(string, "string", size-1);
  }
  else {
    strncpy(string, "anything", size-1);
  }

  string[size - 1] = 0;
  return self;
}
