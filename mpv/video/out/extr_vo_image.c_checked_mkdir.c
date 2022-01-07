
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vo {int dummy; } ;
struct stat {int st_mode; } ;


 scalar_t__ EEXIST ;
 int MP_ERR (struct vo*,char*,char*) ;
 int MP_INFO (struct vo*,char*,char const*) ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ errno ;
 scalar_t__ mkdir (char const*,int) ;
 char* mp_strerror (scalar_t__) ;
 scalar_t__ stat (char const*,struct stat*) ;

__attribute__((used)) static bool checked_mkdir(struct vo *vo, const char *buf)
{
    MP_INFO(vo, "Creating output directory '%s'...\n", buf);
    if (mkdir(buf, 0755) < 0) {
        char *errstr = mp_strerror(errno);
        if (errno == EEXIST) {
            struct stat stat_p;
            if (stat(buf, &stat_p ) == 0 && S_ISDIR(stat_p.st_mode))
                return 1;
        }
        MP_ERR(vo, "Error creating output directory: %s\n", errstr);
        return 0;
    }
    return 1;
}
