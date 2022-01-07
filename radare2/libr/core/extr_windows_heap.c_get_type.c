
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WPARAM ;


 int BACKEND_BLOCK ;
 int LARGE_BLOCK ;



 int LFH_BLOCK ;
 int NT_BLOCK ;
 int SEGMENT_HEAP_BLOCK ;
 int VS_BLOCK ;
 char* r_str_newf (char*,char*,char*,char*) ;

__attribute__((used)) static char *get_type(WPARAM flags) {
 char *state = "";
 switch (flags & 0xFFFF) {
 case 130:
  state = "(FIXED)";
  break;
 case 129:
  state = "(FREE)";
  break;
 case 128:
  state = "(MOVEABLE)";
  break;
 }
 char *heaptype = "";
 if (flags & SEGMENT_HEAP_BLOCK) {
  heaptype = "Segment";
 } else if (flags & NT_BLOCK) {
  heaptype = "NT";
 }
 char *type = "";
 if (flags & LFH_BLOCK) {
  type = "/LFH";
 } else if (flags & LARGE_BLOCK) {
  type = "/LARGE";
 } else if (flags & BACKEND_BLOCK) {
  type = "/BACKEND";
 } else if (flags & VS_BLOCK) {
  type = "/VS";
 }
 return r_str_newf ("%s %s%s", state, heaptype, type);
}
