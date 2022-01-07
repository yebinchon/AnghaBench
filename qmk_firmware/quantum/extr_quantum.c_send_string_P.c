
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int send_string_with_delay_P (char const*,int ) ;

void send_string_P(const char *str) { send_string_with_delay_P(str, 0); }
