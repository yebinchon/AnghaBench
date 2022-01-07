
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int procfile ;


 int FILENAME_MAX ;
 int PROCFILE_FLAG_DEFAULT ;
 int netdata_configured_user_config_dir ;
 int procfile_close (int *) ;
 unsigned int procfile_lines (int *) ;
 int procfile_lineword (int *,unsigned int,int) ;
 int procfile_linewords (int *,unsigned int) ;
 int * procfile_open (char*,char*,int ) ;
 int * procfile_readall (int *) ;
 int procfile_set_quotes (int *,char*) ;
 int snprintfz (char*,int ,char*,int ) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static inline const char* get_release_channel() {
    static int use_stable = -1;

    if (use_stable == -1) {
  char filename[FILENAME_MAX + 1];
        snprintfz(filename, FILENAME_MAX, "%s/.environment", netdata_configured_user_config_dir);
        procfile *ff = procfile_open(filename, "=", PROCFILE_FLAG_DEFAULT);
        if(!ff) {
            use_stable=1;
        } else {
            procfile_set_quotes(ff, "'\"");
            ff = procfile_readall(ff);
            if(!ff) {
                use_stable=1;
            } else {
                unsigned int i;
                for(i = 0; i < procfile_lines(ff); i++) {
                    if (!procfile_linewords(ff, i)) continue;

                    if (!strcmp(procfile_lineword(ff, i, 0), "RELEASE_CHANNEL") && !strcmp(procfile_lineword(ff, i, 1), "stable")) {
                        use_stable = 1;
                        break;
                    }
                }
                procfile_close(ff);
                if (use_stable == -1) use_stable = 0;
            }
        }
    }
    return (use_stable)?"stable":"nightly";
}
