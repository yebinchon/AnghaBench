
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct passwd {char* pw_name; int pw_uid; } ;


 int CONFIG_SECTION_WEB ;
 int D_WEB_CLIENT ;
 char* config_get (int ,char*,char*) ;
 int debug (int ,char*,char*) ;
 int error (char*,char*) ;
 int geteuid () ;
 struct passwd* getpwnam (char*) ;
 struct passwd* getpwuid (int ) ;
 scalar_t__ unlikely (int) ;

uid_t web_files_uid(void) {
    static char *web_owner = ((void*)0);
    static uid_t owner_uid = 0;

    if(unlikely(!web_owner)) {



        struct passwd *pw = getpwuid(geteuid());
        web_owner = config_get(CONFIG_SECTION_WEB, "web files owner", (pw)?(pw->pw_name?pw->pw_name:""):"");
        if(!web_owner || !*web_owner)
            owner_uid = geteuid();
        else {



            pw = getpwnam(web_owner);
            if(!pw) {
                error("User '%s' is not present. Ignoring option.", web_owner);
                owner_uid = geteuid();
            }
            else {
                debug(D_WEB_CLIENT, "Web files owner set to %s.", web_owner);
                owner_uid = pw->pw_uid;
            }
        }
    }

    return(owner_uid);
}
