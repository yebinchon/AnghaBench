
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demangle_component {int dummy; } ;
struct d_info {int dummy; } ;
typedef struct demangle_component* d_left ;


 int d_check_char (struct d_info*,char) ;
 struct demangle_component** d_cv_qualifiers (struct d_info*,struct demangle_component**,int) ;
 struct demangle_component* d_prefix (struct d_info*) ;
 struct demangle_component* d_ref_qualifier (struct d_info*,int *) ;

__attribute__((used)) static struct demangle_component *
d_nested_name (struct d_info *di)
{
  struct demangle_component *ret;
  struct demangle_component **pret;
  struct demangle_component *rqual;

  if (! d_check_char (di, 'N'))
    return ((void*)0);

  pret = d_cv_qualifiers (di, &ret, 1);
  if (pret == ((void*)0))
    return ((void*)0);



  rqual = d_ref_qualifier (di, ((void*)0));

  *pret = d_prefix (di);
  if (*pret == ((void*)0))
    return ((void*)0);

  if (rqual)
    {
      d_left (rqual) = ret;
      ret = rqual;
    }

  if (! d_check_char (di, 'E'))
    return ((void*)0);

  return ret;
}
