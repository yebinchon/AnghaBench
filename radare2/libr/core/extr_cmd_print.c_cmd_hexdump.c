
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cmd_print (void*,char const*) ;

__attribute__((used)) static int cmd_hexdump(void *data, const char *input) {
 return cmd_print (data, input - 1);
}
