
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int fields_size; int types_size; } ;
struct TYPE_10__ {TYPE_3__* types; TYPE_2__* fields; TYPE_1__ header; } ;
struct TYPE_9__ {int descriptor_id; } ;
struct TYPE_8__ {int class_id; int type_id; int name_id; } ;
typedef TYPE_4__ RBinDexObj ;


 int free (char*) ;
 char* getstr (TYPE_4__*,int) ;
 int r_return_val_if_fail (int,int *) ;
 char* r_str_newf (char*,...) ;
 scalar_t__ simplifiedDemangling ;
 char* simplify (int ) ;
 int strdup (char const*) ;

__attribute__((used)) static char *dex_field_name(RBinDexObj *bin, int fid) {
 int cid, tid, type_id;
 r_return_val_if_fail (bin && bin->fields, ((void*)0));

 if (fid < 0 || fid >= bin->header.fields_size) {
  return ((void*)0);
 }
 cid = bin->fields[fid].class_id;
 if (cid < 0 || cid >= bin->header.types_size) {
  return ((void*)0);
 }
 type_id = bin->fields[fid].type_id;
 if (type_id < 0 || type_id >= bin->header.types_size) {
  return ((void*)0);
 }
 tid = bin->fields[fid].name_id;
 const char *a = getstr (bin, bin->types[cid].descriptor_id);
 const char *b = getstr (bin, tid);
 const char *c = getstr (bin, bin->types[type_id].descriptor_id);
 if (simplifiedDemangling) {
  if (a && b && c) {
   char *_a = simplify(strdup (a));
   char *_b = simplify(strdup (b));
   char *_c = simplify(strdup (c));
   char *str = r_str_newf ("(%s) %s.%s", _c, _a, _b);
   free (_a);
   free (_b);
   free (_c);
   return str;
  }
  return r_str_newf ("(%d) %d.%d",
    bin->types[type_id].descriptor_id,
    tid,
    bin->types[cid].descriptor_id
        );
 }
 return (a && b && c)
  ? r_str_newf ("%s->%s %s", a, b, c)
  : r_str_newf ("%d->%d %d", bin->types[cid].descriptor_id, tid, bin->types[type_id].descriptor_id);
}
