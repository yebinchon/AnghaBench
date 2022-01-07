
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RRDSET ;
typedef int BUFFER ;


 int rrdset2json (int *,int *,int *,int *) ;

void rrd_stats_api_v1_chart(RRDSET *st, BUFFER *wb) {
    rrdset2json(st, wb, ((void*)0), ((void*)0));
}
