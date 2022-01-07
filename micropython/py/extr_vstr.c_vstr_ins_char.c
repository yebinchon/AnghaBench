
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vstr_t ;
typedef char unichar ;


 char* vstr_ins_blank_bytes (int *,size_t,int) ;

void vstr_ins_char(vstr_t *vstr, size_t char_pos, unichar chr) {

    char *s = vstr_ins_blank_bytes(vstr, char_pos, 1);
    *s = chr;
}
