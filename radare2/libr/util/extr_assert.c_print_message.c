
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int RLogLevel ;


 int R_VLOG (int ,int *,char const*,int ) ;

__attribute__((used)) static void print_message(RLogLevel level, const char *fmt, va_list args) {
 R_VLOG (level, ((void*)0), fmt, args);
}
