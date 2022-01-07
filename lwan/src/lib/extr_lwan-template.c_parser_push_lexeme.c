
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lexeme {int dummy; } ;
struct stacked_lexeme {int stack; struct lexeme lexeme; } ;
struct parser {int stack; } ;


 int list_add (int *,int *) ;
 int lwan_status_critical_perror (char*) ;
 struct stacked_lexeme* malloc (int) ;

__attribute__((used)) static void parser_push_lexeme(struct parser *parser, struct lexeme *lexeme)
{
    struct stacked_lexeme *stacked_lexeme = malloc(sizeof(*stacked_lexeme));
    if (!stacked_lexeme)
        lwan_status_critical_perror("Could not push parser lexeme");

    stacked_lexeme->lexeme = *lexeme;
    list_add(&parser->stack, &stacked_lexeme->stack);
}
