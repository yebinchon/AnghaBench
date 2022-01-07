
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RAGraph ;


 int BODY_COMMENTS ;
 int BODY_OFFSETS ;
 int BODY_SUMMARY ;
 scalar_t__ is_comments (int const*) ;
 scalar_t__ is_offset (int const*) ;
 scalar_t__ is_summary (int const*) ;

__attribute__((used)) static int mode2opts(const RAGraph *g) {
 int opts = 0;
 if (is_offset (g)) {
  opts |= BODY_OFFSETS;
 }
 if (is_comments (g)) {
  opts |= BODY_COMMENTS;
 }
 if (is_summary (g)) {
  opts |= BODY_SUMMARY;
 }
 return opts;
}
