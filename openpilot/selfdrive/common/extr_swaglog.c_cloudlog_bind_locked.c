
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ctx_j; } ;


 int json_append_member (int ,char const*,int ) ;
 int json_mkstring (char const*) ;
 TYPE_1__ s ;

__attribute__((used)) static void cloudlog_bind_locked(const char* k, const char* v) {
  json_append_member(s.ctx_j, k, json_mkstring(v));
}
