
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char id; scalar_t__ (* parse ) (char const**) ;} ;


 unsigned char EVAL_OPERATOR_NOP ;
 int eval_precedence (unsigned char) ;
 TYPE_1__* operator_parsers ;
 int skip_spaces (char const**) ;
 scalar_t__ stub1 (char const**) ;

__attribute__((used)) static inline unsigned char parse_operator(const char **string, int *precedence) {
    skip_spaces(string);

    int i;
    for(i = 0 ; operator_parsers[i].parse != ((void*)0) ; i++)
        if(operator_parsers[i].parse(string)) {
            if(precedence) *precedence = eval_precedence(operator_parsers[i].id);
            return operator_parsers[i].id;
        }

    return EVAL_OPERATOR_NOP;
}
