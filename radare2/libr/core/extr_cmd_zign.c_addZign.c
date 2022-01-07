
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RCore ;
 int addBytesZign (int *,char const*,int,char const*,int) ;
 int addCommentZign (int *,char const*,char const*,int) ;
 int addGraphZign (int *,char const*,char const*,int) ;
 int addHashZign (int *,char const*,int,char const*,int) ;
 int addNameZign (int *,char const*,char const*,int) ;
 int addOffsetZign (int *,char const*,char const*,int) ;
 int addRefsZign (int *,char const*,char const*,int) ;
 int addTypesZign (int *,char const*,char const*,int) ;
 int addVarsZign (int *,char const*,char const*,int) ;
 int addXRefsZign (int *,char const*,char const*,int) ;
 int eprintf (char*) ;

__attribute__((used)) static bool addZign(RCore *core, const char *name, int type, const char *args0, int nargs) {
 switch (type) {
 case 136:
 case 138:
  return addBytesZign (core, name, type, args0, nargs);
 case 134:
  return addGraphZign (core, name, args0, nargs);
 case 135:
  return addCommentZign (core, name, args0, nargs);
 case 133:
  return addNameZign (core, name, args0, nargs);
 case 132:
  return addOffsetZign (core, name, args0, nargs);
 case 131:
  return addRefsZign (core, name, args0, nargs);
 case 128:
  return addXRefsZign (core, name, args0, nargs);
 case 129:
  return addVarsZign (core, name, args0, nargs);
 case 130:
  return addTypesZign (core, name, args0, nargs);
 case 137:
  return addHashZign (core, name, type, args0, nargs);
 default:
  eprintf ("error: unknown zignature type\n");
 }

 return 0;
}
