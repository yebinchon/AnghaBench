
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arcDisState {int _this; int (* err ) (int ,char const*) ;} ;


 int stub1 (int ,char const*) ;

__attribute__((used)) static void
mwerror (struct arcDisState * state, const char * msg)
{
 if (state->err != 0) {
  (*state->err) (state->_this, (msg));
 }
}
