
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_bool ;
typedef int va_list ;


 int strx_printv (int*,char*,size_t,char const*,int ,int ) ;

__attribute__((used)) static int phpdbg_xml_vsnprintf(char *buf, size_t len, const char *format, zend_bool escape_xml, va_list ap) {
 int cc;

 strx_printv(&cc, buf, len, format, escape_xml, ap);
 return (cc);
}
