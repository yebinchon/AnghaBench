
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



 int ZEND_FETCH_CLASS_EXCEPTION ;

 int ZEND_FETCH_CLASS_MASK ;
 int ZEND_FETCH_CLASS_NO_AUTOLOAD ;


 int ZEND_FETCH_CLASS_SILENT ;


 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void zend_dump_class_fetch_type(uint32_t fetch_type)
{
 switch (fetch_type & ZEND_FETCH_CLASS_MASK) {
  case 130:
   fprintf(stderr, " (self)");
   break;
  case 131:
   fprintf(stderr, " (parent)");
   break;
  case 129:
   fprintf(stderr, " (static)");
   break;
  case 133:
   fprintf(stderr, " (auto)");
   break;
  case 132:
   fprintf(stderr, " (interface)");
   break;
  case 128:
   fprintf(stderr, " (trait)");
   break;
 }
 if (fetch_type & ZEND_FETCH_CLASS_NO_AUTOLOAD) {
   fprintf(stderr, " (no-autolod)");
 }
 if (fetch_type & ZEND_FETCH_CLASS_SILENT) {
   fprintf(stderr, " (silent)");
 }
 if (fetch_type & ZEND_FETCH_CLASS_EXCEPTION) {
   fprintf(stderr, " (exception)");
 }
}
