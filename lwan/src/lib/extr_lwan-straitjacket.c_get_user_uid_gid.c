
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct passwd {int pw_gid; int pw_uid; } ;
typedef int gid_t ;


 long NSS_BUFLEN_PASSWD ;
 int _SC_GETPW_R_SIZE_MAX ;
 int errno ;
 int free (char*) ;
 int getpwnam_r (char const*,struct passwd*,char*,size_t,struct passwd**) ;
 int lwan_status_error (char*,...) ;
 int lwan_status_perror (char*,char const*) ;
 char* malloc (size_t) ;
 long sysconf (int ) ;

__attribute__((used)) static bool get_user_uid_gid(const char *user, uid_t *uid, gid_t *gid)
{
    struct passwd pwd = {};
    struct passwd *result;
    char *buf;
    long pw_size_max = sysconf(_SC_GETPW_R_SIZE_MAX);
    int r;

    if (pw_size_max < 0) {



        pw_size_max = NSS_BUFLEN_PASSWD;
    }

    buf = malloc((size_t)pw_size_max);
    if (!buf) {
        lwan_status_error("Could not allocate buffer for passwd struct");
        return 0;
    }

    r = getpwnam_r(user, &pwd, buf, (size_t)pw_size_max, &result);
    *uid = pwd.pw_uid;
    *gid = pwd.pw_gid;
    free(buf);

    if (result)
        return 1;

    if (!r) {
        lwan_status_error("Username not found: %s", user);
    } else {
        errno = r;
        lwan_status_perror("Could not obtain uid/gid for user %s", user);
    }

    return 0;
}
