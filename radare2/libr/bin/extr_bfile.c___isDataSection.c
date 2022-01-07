
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; scalar_t__ is_data; scalar_t__ has_strings; } ;
typedef TYPE_1__ RBinSection ;
typedef int RBinFile ;


 int * strstr (int ,char*) ;

__attribute__((used)) static bool __isDataSection(RBinFile *a, RBinSection *s) {
 if (s->has_strings || s->is_data) {
  return 1;
 }

 return strstr (s->name, "_const") != ((void*)0);
}
