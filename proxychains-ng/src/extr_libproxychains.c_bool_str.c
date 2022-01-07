
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char* bool_str(int bool_val) {
 if(bool_val) return "true";
 return "false";
}
