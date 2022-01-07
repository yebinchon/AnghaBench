
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Sdb ;
typedef int RGraphNode ;
typedef int RAGraph ;


 int dist_nodes (int const*,int const*,int const*) ;
 int hash_get_int (int *,int const*) ;

__attribute__((used)) static int place_nodes_val(const RAGraph *g, const RGraphNode *gn, const RGraphNode *sibl, Sdb *res, int is_left) {
 if (is_left) {
  return hash_get_int (res, sibl) + dist_nodes (g, sibl, gn);
 }
 return hash_get_int (res, sibl) - dist_nodes (g, gn, sibl);
}
