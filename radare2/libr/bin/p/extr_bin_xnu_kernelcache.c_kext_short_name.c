
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* name; } ;
typedef TYPE_1__ RKext ;


 char* strrchr (char const*,char) ;

__attribute__((used)) static const char *kext_short_name(RKext *kext) {
 const char *sn = strrchr (kext->name, '.');
 return sn ? sn + 1 : kext->name;
}
