
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RISCVARGSIZE ;
 int snprintf (char*,int ,char*,char const*) ;

__attribute__((used)) static void arg_p2(char *buf, unsigned long val, const char* const* array, size_t size) {
 const char *s = val >= size || array[val] ? array[val] : "unknown";
 snprintf (buf, RISCVARGSIZE, "%s", s);
}
