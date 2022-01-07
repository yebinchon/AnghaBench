
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gl_parser_attrib {int name; } ;


 int dstr_free (int *) ;

__attribute__((used)) static inline void gl_parser_attrib_free(struct gl_parser_attrib *attr)
{
 dstr_free(&attr->name);
}
