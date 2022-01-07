
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int mp_obj_t ;
struct TYPE_4__ {int * type; } ;
typedef TYPE_1__ mp_obj_base_t ;
struct TYPE_5__ {int tok_line; int source_name; } ;
typedef TYPE_2__ mp_lexer_t ;


 scalar_t__ MP_OBJ_TO_PTR (int ) ;
 int MP_QSTRnull ;
 int mp_obj_exception_add_traceback (int ,int ,int ,int ) ;
 int mp_type_SyntaxError ;
 int nlr_raise (int ) ;

void raise_exc(mp_obj_t exc, mp_lexer_t *lex) {


    if (lex != ((void*)0)) {
        ((mp_obj_base_t*)MP_OBJ_TO_PTR(exc))->type = &mp_type_SyntaxError;
        mp_obj_exception_add_traceback(exc, lex->source_name, lex->tok_line, MP_QSTRnull);
    }
    nlr_raise(exc);
}
