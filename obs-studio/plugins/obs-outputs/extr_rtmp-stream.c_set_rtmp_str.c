
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* av_val; int av_len; } ;
typedef TYPE_1__ AVal ;


 scalar_t__ strlen (char const*) ;

__attribute__((used)) static inline void set_rtmp_str(AVal *val, const char *str)
{
 bool valid = (str && *str);
 val->av_val = valid ? (char *)str : ((void*)0);
 val->av_len = valid ? (int)strlen(str) : 0;
}
