
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;
struct trace_node {int addr; } ;
typedef int Sdb ;
typedef int RGraphNode ;
typedef int RGraph ;


 char* TN_KEY_FMT ;
 int TN_KEY_LEN ;
 int * r_graph_add_node (int *,struct trace_node*) ;
 scalar_t__ sdb_num_get (int *,char*,int *) ;
 int sdb_num_set (int *,char*,int ,int ) ;
 int snprintf (char*,int,char*,int ) ;

__attribute__((used)) static RGraphNode *get_graphtrace_node (RGraph *g, Sdb *nodes, struct trace_node *tn) {
 RGraphNode *gn;
 char tn_key[TN_KEY_LEN];

 snprintf (tn_key, TN_KEY_LEN, TN_KEY_FMT, tn->addr);
 gn = (RGraphNode *)(size_t)sdb_num_get (nodes, tn_key, ((void*)0));
 if (!gn) {
  gn = r_graph_add_node (g, tn);
  sdb_num_set (nodes, tn_key, (ut64)(size_t)gn, 0);
 }
 return gn;
}
