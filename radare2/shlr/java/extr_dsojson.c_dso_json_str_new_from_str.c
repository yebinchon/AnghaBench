
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* _str; } ;
struct TYPE_9__ {TYPE_1__ val; } ;
struct TYPE_8__ {int len; scalar_t__ data; } ;
typedef TYPE_2__ DsoJsonStr ;
typedef TYPE_3__ DsoJsonObj ;


 int allocDsoStr (TYPE_2__*,int ) ;
 TYPE_3__* dso_json_str_new () ;
 int memcpy (scalar_t__,char const*,int ) ;
 int strlen (char const*) ;

DsoJsonObj * dso_json_str_new_from_str (const char *str) {
 DsoJsonObj *x = dso_json_str_new ();
 if (!x) return ((void*)0);
 DsoJsonStr * dsoStr = x->val._str;
 allocDsoStr (dsoStr, strlen (str));
 if (dsoStr->data) memcpy (dsoStr->data, str, dsoStr->len);
 return x;
}
