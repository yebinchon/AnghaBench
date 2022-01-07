
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RGraphNode ;
typedef int RAGraph ;


 int combine_sequences (int const*,int,int const*,int const*,int,int,int) ;
 int place_single (int const*,int,int const*,int const*,int,int) ;

__attribute__((used)) static void place_sequence(const RAGraph *g, int l, const RGraphNode *bm, const RGraphNode *bp, int from_up, int va, int vr) {
 if (vr == va + 1) {
  place_single (g, l, bm, bp, from_up, va);
 } else if (vr > va + 1) {
  int vt = (vr + va) / 2;
  place_sequence (g, l, bm, bp, from_up, va, vt);
  place_sequence (g, l, bm, bp, from_up, vt, vr);
  combine_sequences (g, l, bm, bp, from_up, va, vr);
 }
}
