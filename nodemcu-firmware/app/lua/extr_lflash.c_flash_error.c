
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ inflate_state; } ;
struct TYPE_3__ {char const* error; int L; } ;


 TYPE_2__* in ;
 int lua_error (int ) ;
 int lua_pushnil (int ) ;
 TYPE_1__* out ;
 int uz_free (scalar_t__) ;

__attribute__((used)) static void flash_error(const char *err) {
  if (out)
    out->error = err;
  if (in && in->inflate_state)
    uz_free(in->inflate_state);
  lua_pushnil(out->L);
  lua_error(out->L);
}
