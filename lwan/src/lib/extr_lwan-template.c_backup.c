
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lexer {int pos; } ;



__attribute__((used)) static void backup(struct lexer *lexer) { lexer->pos--; }
