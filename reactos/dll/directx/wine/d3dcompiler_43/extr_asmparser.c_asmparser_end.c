
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asm_parser {int dummy; } ;


 int TRACE (char*) ;

__attribute__((used)) static void asmparser_end(struct asm_parser *This) {
    TRACE("Finalizing shader\n");
}
