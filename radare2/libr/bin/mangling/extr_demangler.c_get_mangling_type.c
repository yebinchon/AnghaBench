
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EManglingType ;


 int eManglingMicrosoft ;
 int eManglingUnknown ;
 int eManglingUnsupported ;

__attribute__((used)) static EManglingType get_mangling_type(char *sym)
{
 EManglingType mangling_type = eManglingUnsupported;
 if (sym == 0) {
  mangling_type = eManglingUnknown;
  goto get_mangling_type_err;
 }

 switch (*sym) {
 case '.':
 case '?':
  mangling_type = eManglingMicrosoft;
  break;
 default:
  break;
 }

get_mangling_type_err:
 return mangling_type;
}
