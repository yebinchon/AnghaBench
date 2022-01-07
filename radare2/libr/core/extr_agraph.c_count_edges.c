
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RANode ;
typedef int RAGraph ;


 int get_edge_number (int const*,int *,int *,int) ;

__attribute__((used)) static int count_edges (const RAGraph *g, RANode *src, RANode *dst) {
 return get_edge_number (g, src, dst, 1);
}
