
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hostname; } ;
typedef int RRDSET ;
typedef TYPE_1__ RRDHOST ;


 int D_RRD_CALLS ;
 int RRD_ID_LENGTH_MAX ;
 int debug (int ,char*,char const*,char const*,int ) ;
 int * rrdset_find (TYPE_1__*,char*) ;
 int strcat (char*,char*) ;
 scalar_t__ strlen (char*) ;
 int strncpyz (char*,char const*,size_t) ;

inline RRDSET *rrdset_find_bytype(RRDHOST *host, const char *type, const char *id) {
    debug(D_RRD_CALLS, "rrdset_find_bytype() for chart '%s.%s' in host '%s'", type, id, host->hostname);

    char buf[RRD_ID_LENGTH_MAX + 1];
    strncpyz(buf, type, RRD_ID_LENGTH_MAX - 1);
    strcat(buf, ".");
    int len = (int) strlen(buf);
    strncpyz(&buf[len], id, (size_t) (RRD_ID_LENGTH_MAX - len));

    return(rrdset_find(host, buf));
}
