
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct ECPGstruct_member* members; } ;
struct ECPGtype {int * struct_sizeof; TYPE_1__ u; } ;
struct ECPGstruct_member {struct ECPGstruct_member* next; int * type; int * name; } ;
typedef int FILE ;


 int ECPGdump_a_type (int *,int *,int *,int,int *,int *,int,char const*,char const*,char*,int *,int *) ;
 int ET_WARNING ;
 int PARSE_ERROR ;
 int atoi (char*) ;
 struct ECPGtype ecpg_no_indicator ;
 int free (char*) ;
 scalar_t__ mm_alloc (scalar_t__) ;
 int mmerror (int ,int ,char*,char const*) ;
 int sprintf (char*,char*,char const*,char const*) ;
 scalar_t__ strlen (char const*) ;
 struct ECPGstruct_member struct_no_indicator ;

__attribute__((used)) static void
ECPGdump_a_struct(FILE *o, const char *name, const char *ind_name, char *arrsize, struct ECPGtype *type, struct ECPGtype *ind_type, const char *prefix, const char *ind_prefix)
{




 struct ECPGstruct_member *p,
      *ind_p = ((void*)0);
 char *pbuf = (char *) mm_alloc(strlen(name) + ((prefix == ((void*)0)) ? 0 : strlen(prefix)) + 3);
 char *ind_pbuf = (char *) mm_alloc(strlen(ind_name) + ((ind_prefix == ((void*)0)) ? 0 : strlen(ind_prefix)) + 3);

 if (atoi(arrsize) == 1)
  sprintf(pbuf, "%s%s.", prefix ? prefix : "", name);
 else
  sprintf(pbuf, "%s%s->", prefix ? prefix : "", name);

 prefix = pbuf;

 if (ind_type == &ecpg_no_indicator)
  ind_p = &struct_no_indicator;
 else if (ind_type != ((void*)0))
 {
  if (atoi(arrsize) == 1)
   sprintf(ind_pbuf, "%s%s.", ind_prefix ? ind_prefix : "", ind_name);
  else
   sprintf(ind_pbuf, "%s%s->", ind_prefix ? ind_prefix : "", ind_name);

  ind_prefix = ind_pbuf;
  ind_p = ind_type->u.members;
 }

 for (p = type->u.members; p; p = p->next)
 {
  ECPGdump_a_type(o, p->name, p->type, -1,
      (ind_p != ((void*)0)) ? ind_p->name : ((void*)0),
      (ind_p != ((void*)0)) ? ind_p->type : ((void*)0),
      -1,
      prefix, ind_prefix, arrsize, type->struct_sizeof,
      (ind_p != ((void*)0)) ? ind_type->struct_sizeof : ((void*)0));
  if (ind_p != ((void*)0) && ind_p != &struct_no_indicator)
  {
   ind_p = ind_p->next;
   if (ind_p == ((void*)0) && p->next != ((void*)0))
   {
    mmerror(PARSE_ERROR, ET_WARNING, "indicator struct \"%s\" has too few members", ind_name);
    ind_p = &struct_no_indicator;
   }
  }
 }

 if (ind_type != ((void*)0) && ind_p != ((void*)0) && ind_p != &struct_no_indicator)
 {
  mmerror(PARSE_ERROR, ET_WARNING, "indicator struct \"%s\" has too many members", ind_name);
 }

 free(pbuf);
 free(ind_pbuf);
}
