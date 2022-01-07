
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RStrBuf ;


 int r_strbuf_appendf (int *,char*,char const*) ;

__attribute__((used)) static void edf_zf_constraint(RStrBuf *result, const char *new_node_str) {
 r_strbuf_appendf (result, ":(%s==0)", new_node_str);
}
