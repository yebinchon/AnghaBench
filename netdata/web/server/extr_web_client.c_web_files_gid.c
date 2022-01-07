
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group {char* gr_name; int gr_gid; } ;
typedef int gid_t ;


 int CONFIG_SECTION_WEB ;
 int D_WEB_CLIENT ;
 char* config_get (int ,char*,char*) ;
 int debug (int ,char*,char*) ;
 int error (char*,char*) ;
 int getegid () ;
 struct group* getgrgid (int ) ;
 struct group* getgrnam (char*) ;
 scalar_t__ unlikely (int) ;

gid_t web_files_gid(void) {
    static char *web_group = ((void*)0);
    static gid_t owner_gid = 0;

    if(unlikely(!web_group)) {



        struct group *gr = getgrgid(getegid());
        web_group = config_get(CONFIG_SECTION_WEB, "web files group", (gr)?(gr->gr_name?gr->gr_name:""):"");
        if(!web_group || !*web_group)
            owner_gid = getegid();
        else {



            gr = getgrnam(web_group);
            if(!gr) {
                error("Group '%s' is not present. Ignoring option.", web_group);
                owner_gid = getegid();
            }
            else {
                debug(D_WEB_CLIENT, "Web files group set to %s.", web_group);
                owner_gid = gr->gr_gid;
            }
        }
    }

    return(owner_gid);
}
