
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demangle_component {int dummy; } ;
struct d_info {int expansion; } ;


 int DEMANGLE_COMPONENT_CONSTRUCTION_VTABLE ;
 int DEMANGLE_COMPONENT_COVARIANT_THUNK ;
 int DEMANGLE_COMPONENT_GUARD ;
 int DEMANGLE_COMPONENT_HIDDEN_ALIAS ;
 int DEMANGLE_COMPONENT_JAVA_CLASS ;
 int DEMANGLE_COMPONENT_NONTRANSACTION_CLONE ;
 int DEMANGLE_COMPONENT_REFTEMP ;
 int DEMANGLE_COMPONENT_THUNK ;
 int DEMANGLE_COMPONENT_TLS_INIT ;
 int DEMANGLE_COMPONENT_TLS_WRAPPER ;
 int DEMANGLE_COMPONENT_TPARM_OBJ ;
 int DEMANGLE_COMPONENT_TRANSACTION_CLONE ;
 int DEMANGLE_COMPONENT_TYPEINFO ;
 int DEMANGLE_COMPONENT_TYPEINFO_FN ;
 int DEMANGLE_COMPONENT_TYPEINFO_NAME ;
 int DEMANGLE_COMPONENT_VIRTUAL_THUNK ;
 int DEMANGLE_COMPONENT_VTABLE ;
 int DEMANGLE_COMPONENT_VTT ;
 struct demangle_component* cplus_demangle_type (struct d_info*) ;
 int d_call_offset (struct d_info*,char) ;
 scalar_t__ d_check_char (struct d_info*,char) ;
 struct demangle_component* d_encoding (struct d_info*,int ) ;
 struct demangle_component* d_java_resource (struct d_info*) ;
 struct demangle_component* d_make_comp (struct d_info*,int ,struct demangle_component*,struct demangle_component*) ;
 struct demangle_component* d_name (struct d_info*) ;
 int d_next_char (struct d_info*) ;
 int d_number (struct d_info*) ;
 struct demangle_component* d_number_component (struct d_info*) ;
 struct demangle_component* d_template_arg (struct d_info*) ;

__attribute__((used)) static struct demangle_component *
d_special_name (struct d_info *di)
{
  di->expansion += 20;
  if (d_check_char (di, 'T'))
    {
      switch (d_next_char (di))
 {
 case 'V':
   di->expansion -= 5;
   return d_make_comp (di, DEMANGLE_COMPONENT_VTABLE,
         cplus_demangle_type (di), ((void*)0));
 case 'T':
   di->expansion -= 10;
   return d_make_comp (di, DEMANGLE_COMPONENT_VTT,
         cplus_demangle_type (di), ((void*)0));
 case 'I':
   return d_make_comp (di, DEMANGLE_COMPONENT_TYPEINFO,
         cplus_demangle_type (di), ((void*)0));
 case 'S':
   return d_make_comp (di, DEMANGLE_COMPONENT_TYPEINFO_NAME,
         cplus_demangle_type (di), ((void*)0));

 case 'h':
   if (! d_call_offset (di, 'h'))
     return ((void*)0);
   return d_make_comp (di, DEMANGLE_COMPONENT_THUNK,
         d_encoding (di, 0), ((void*)0));

 case 'v':
   if (! d_call_offset (di, 'v'))
     return ((void*)0);
   return d_make_comp (di, DEMANGLE_COMPONENT_VIRTUAL_THUNK,
         d_encoding (di, 0), ((void*)0));

 case 'c':
   if (! d_call_offset (di, '\0'))
     return ((void*)0);
   if (! d_call_offset (di, '\0'))
     return ((void*)0);
   return d_make_comp (di, DEMANGLE_COMPONENT_COVARIANT_THUNK,
         d_encoding (di, 0), ((void*)0));

 case 'C':
   {
     struct demangle_component *derived_type;
     int offset;
     struct demangle_component *base_type;

     derived_type = cplus_demangle_type (di);
     offset = d_number (di);
     if (offset < 0)
       return ((void*)0);
     if (! d_check_char (di, '_'))
       return ((void*)0);
     base_type = cplus_demangle_type (di);


     di->expansion += 5;
     return d_make_comp (di, DEMANGLE_COMPONENT_CONSTRUCTION_VTABLE,
    base_type, derived_type);
   }

 case 'F':
   return d_make_comp (di, DEMANGLE_COMPONENT_TYPEINFO_FN,
         cplus_demangle_type (di), ((void*)0));
 case 'J':
   return d_make_comp (di, DEMANGLE_COMPONENT_JAVA_CLASS,
         cplus_demangle_type (di), ((void*)0));

 case 'H':
   return d_make_comp (di, DEMANGLE_COMPONENT_TLS_INIT,
         d_name (di), ((void*)0));

 case 'W':
   return d_make_comp (di, DEMANGLE_COMPONENT_TLS_WRAPPER,
         d_name (di), ((void*)0));

 case 'A':
   return d_make_comp (di, DEMANGLE_COMPONENT_TPARM_OBJ,
         d_template_arg (di), ((void*)0));

 default:
   return ((void*)0);
 }
    }
  else if (d_check_char (di, 'G'))
    {
      switch (d_next_char (di))
 {
 case 'V':
   return d_make_comp (di, DEMANGLE_COMPONENT_GUARD,
         d_name (di), ((void*)0));

 case 'R':
   {
     struct demangle_component *name = d_name (di);
     return d_make_comp (di, DEMANGLE_COMPONENT_REFTEMP, name,
    d_number_component (di));
   }

 case 'A':
   return d_make_comp (di, DEMANGLE_COMPONENT_HIDDEN_ALIAS,
         d_encoding (di, 0), ((void*)0));

 case 'T':
   switch (d_next_char (di))
     {
     case 'n':
       return d_make_comp (di, DEMANGLE_COMPONENT_NONTRANSACTION_CLONE,
      d_encoding (di, 0), ((void*)0));
     default:





     case 't':
       return d_make_comp (di, DEMANGLE_COMPONENT_TRANSACTION_CLONE,
      d_encoding (di, 0), ((void*)0));
     }

 case 'r':
   return d_java_resource (di);

 default:
   return ((void*)0);
 }
    }
  else
    return ((void*)0);
}
