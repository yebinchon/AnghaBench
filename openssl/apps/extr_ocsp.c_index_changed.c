
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct stat {scalar_t__ st_mtime; scalar_t__ st_ctime; scalar_t__ st_ino; scalar_t__ st_dev; } ;
struct TYPE_4__ {scalar_t__ st_mtime; scalar_t__ st_ctime; scalar_t__ st_ino; scalar_t__ st_dev; } ;
struct TYPE_5__ {TYPE_1__ dbst; int dbfname; } ;
typedef TYPE_2__ CA_DB ;


 int LOG_INFO ;
 int stat (int ,struct stat*) ;
 int syslog (int ,char*) ;

__attribute__((used)) static int index_changed(CA_DB *rdb)
{
    struct stat sb;

    if (rdb != ((void*)0) && stat(rdb->dbfname, &sb) != -1) {
        if (rdb->dbst.st_mtime != sb.st_mtime
            || rdb->dbst.st_ctime != sb.st_ctime
            || rdb->dbst.st_ino != sb.st_ino
            || rdb->dbst.st_dev != sb.st_dev) {
            syslog(LOG_INFO, "index file changed, reloading");
            return 1;
        }
    }
    return 0;
}
