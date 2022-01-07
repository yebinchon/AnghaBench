
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dstr {scalar_t__ len; int * array; } ;
struct TYPE_3__ {int av_len; int * av_val; } ;
typedef TYPE_1__ AVal ;


 int dstr_is_empty (struct dstr*) ;

__attribute__((used)) static inline void set_rtmp_dstr(AVal *val, struct dstr *str)
{
 bool valid = !dstr_is_empty(str);
 val->av_val = valid ? str->array : ((void*)0);
 val->av_len = valid ? (int)str->len : 0;
}
