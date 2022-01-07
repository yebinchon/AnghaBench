
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_str {int dummy; } ;


 struct mg_str mg_strdup_common (struct mg_str const,int ) ;

struct mg_str mg_strdup(const struct mg_str s) {
  return mg_strdup_common(s, 0 );
}
