
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gl_parser_attrib {int dummy; } ;


 int memset (struct gl_parser_attrib*,int ,int) ;

__attribute__((used)) static inline void gl_parser_attrib_init(struct gl_parser_attrib *attr)
{
 memset(attr, 0, sizeof(struct gl_parser_attrib));
}
