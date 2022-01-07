
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ expression_type_t ;
typedef int BOOL ;


 scalar_t__ EXPR_ARRAY ;
 scalar_t__ EXPR_IDENT ;
 scalar_t__ EXPR_MEMBER ;

__attribute__((used)) static inline BOOL is_memberid_expr(expression_type_t type)
{
    return type == EXPR_IDENT || type == EXPR_MEMBER || type == EXPR_ARRAY;
}
