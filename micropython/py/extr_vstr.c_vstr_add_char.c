
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vstr_t ;
typedef int unichar ;
typedef int byte ;


 int assert (int) ;
 int vstr_add_byte (int *,int) ;
 scalar_t__ vstr_add_len (int *,int) ;

void vstr_add_char(vstr_t *vstr, unichar c) {
    vstr_add_byte(vstr, c);

}
