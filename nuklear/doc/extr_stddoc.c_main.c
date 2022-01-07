
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int feof (int ) ;
 int getc (int ) ;
 int printf (char*,char*) ;
 int putc (int,int ) ;
 int stdin ;
 int stdout ;

int main() {
    printf("%s\n", "<meta charset='utf-8' emacsmode='-*- markdown -*-'>");
    printf("%s\n", "<link rel='stylesheet' href='https://casual-effects.com/markdeep/latest/apidoc.css?'>");

    for( int fsm_S = 0, fsm_D = 0, fsm_H = 0; !feof(stdin); ) {
        int chr = getc(stdin);
        if( fsm_S > 3 || fsm_D > 3 || fsm_H > 3 ) {
            putc(chr, stdout);
            if( chr != '\r' && chr != '\n' ) continue;
        }
             if( fsm_S <= 2 && chr == '/' && !fsm_D && !fsm_H ) fsm_S++;
        else if( fsm_S == 3 && chr == ' ' && !fsm_D && !fsm_H ) fsm_S++;
        else if( fsm_D <= 2 && chr == '-' && !fsm_S && !fsm_H ) fsm_D++;
        else if( fsm_D == 3 && chr == ' ' && !fsm_S && !fsm_H ) fsm_D++;
        else if( fsm_H <= 2 && chr == '#' && !fsm_S && !fsm_D ) fsm_H++;
        else if( fsm_H == 3 && chr == ' ' && !fsm_S && !fsm_D ) fsm_H++;
        else fsm_S = fsm_D = fsm_H = 0;
    }

    printf("%s\n", "<script>markdeepOptions={tocStyle:'medium'};</script>");
    printf("%s\n", "<!-- Markdeep: --><script src='https://casual-effects.com/markdeep/latest/markdeep.min.js?'></script>");
}
