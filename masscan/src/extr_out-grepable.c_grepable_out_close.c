
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timestamp ;
typedef int time_t ;
struct tm {int dummy; } ;
struct Output {int dummy; } ;
typedef int FILE ;


 int UNUSEDPARM (struct Output*) ;
 int fprintf (int *,char*,char*) ;
 int gmtime_s (struct tm*,int *) ;
 int strftime (char*,int,char*,struct tm*) ;
 int time (int ) ;

__attribute__((used)) static void
grepable_out_close(struct Output *out, FILE *fp)
{
    time_t now = time(0);
    char timestamp[64];
    struct tm tm;

    UNUSEDPARM(out);

    gmtime_s(&tm, &now);



    strftime(timestamp, sizeof(timestamp), "%c", &tm);

    fprintf(fp, "# Masscan done at %s\n",
                timestamp);
}
