
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*,char const*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static inline int is_machine_guid_blacklisted(const char *guid) {




    if(!strcmp(guid, "8a795b0c-2311-11e6-8563-000c295076a6")
       || !strcmp(guid, "4aed1458-1c3e-11e6-a53f-000c290fc8f5")
            ) {
        error("Blacklisted machine GUID '%s' found.", guid);
        return 1;
    }

    return 0;
}
