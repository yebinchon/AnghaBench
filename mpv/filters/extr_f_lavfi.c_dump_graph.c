
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lavfi {int graph; } ;


 int MP_DBG (struct lavfi*,char*,...) ;
 int av_free (char*) ;
 char* avfilter_graph_dump (int ,int *) ;

__attribute__((used)) static void dump_graph(struct lavfi *c)
{







}
