
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXPGPATH ;
 int StatusFilePath (char*,char*,char*) ;
 int WARNING ;
 int durable_rename (char*,char*,int ) ;

__attribute__((used)) static void
pgarch_archiveDone(char *xlog)
{
 char rlogready[MAXPGPATH];
 char rlogdone[MAXPGPATH];

 StatusFilePath(rlogready, xlog, ".ready");
 StatusFilePath(rlogdone, xlog, ".done");
 (void) durable_rename(rlogready, rlogdone, WARNING);
}
