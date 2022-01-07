
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_PRINTABLE (char) ;

__attribute__((used)) static inline char cmd_pxb_p(char input) {
 return IS_PRINTABLE (input)? input: '.';
}
