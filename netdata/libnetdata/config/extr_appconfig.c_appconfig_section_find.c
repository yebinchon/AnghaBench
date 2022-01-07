
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct section {int dummy; } ;
struct config {int dummy; } ;


 struct section* appconfig_index_find (struct config*,char const*,int ) ;

__attribute__((used)) static inline struct section *appconfig_section_find(struct config *root, const char *section) {
    return appconfig_index_find(root, section, 0);
}
