
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {char const* av_val; scalar_t__ av_len; } ;
struct TYPE_7__ {char* av_val; int av_len; } ;
struct TYPE_8__ {int socksport; TYPE_1__ sockshost; } ;
struct TYPE_9__ {TYPE_2__ Link; } ;
typedef TYPE_3__ RTMP ;
typedef TYPE_4__ AVal ;


 int RTMP_LOGDEBUG ;
 int RTMP_Log (int ,char*,char*,int) ;
 int atoi (char const*) ;
 char* strchr (char const*,char) ;
 char* strdup (char const*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void
SocksSetup(RTMP *r, AVal *sockshost)
{
    if (sockshost->av_len)
    {
        const char *socksport = strchr(sockshost->av_val, ':');
        char *hostname = strdup(sockshost->av_val);

        if (socksport)
            hostname[socksport - sockshost->av_val] = '\0';
        r->Link.sockshost.av_val = hostname;
        r->Link.sockshost.av_len = (int)strlen(hostname);

        r->Link.socksport = socksport ? atoi(socksport + 1) : 1080;
        RTMP_Log(RTMP_LOGDEBUG, "Connecting via SOCKS proxy: %s:%d", r->Link.sockshost.av_val,
                 r->Link.socksport);
    }
    else
    {
        r->Link.sockshost.av_val = ((void*)0);
        r->Link.sockshost.av_len = 0;
        r->Link.socksport = 0;
    }
}
