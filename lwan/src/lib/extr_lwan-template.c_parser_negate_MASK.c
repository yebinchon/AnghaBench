#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct parser {int /*<<< orphan*/  flags; } ;
struct lexeme {int type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLAGS_NEGATE ; 
#define  LEXEME_HASH 129 
#define  LEXEME_IDENTIFIER 128 
 void* FUNC0 (struct parser*,struct lexeme*) ; 
 void* parser_iter ; 
 void* FUNC1 (struct lexeme*) ; 

__attribute__((used)) static void *FUNC2(struct parser *parser, struct lexeme *lexeme)
{
    switch (lexeme->type) {
    default:
        return FUNC1(lexeme);

    case LEXEME_HASH:
        parser->flags ^= FLAGS_NEGATE;
        return parser_iter;

    case LEXEME_IDENTIFIER:
        parser->flags ^= FLAGS_NEGATE;
        return FUNC0(parser, lexeme);
    }
}