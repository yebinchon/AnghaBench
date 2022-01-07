
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int ut64 ;
typedef void* ut32 ;
struct TYPE_12__ {char* type; int num_bits; int num_fields; TYPE_1__* fields; } ;
typedef TYPE_2__ gdbr_xml_flags_t ;
struct TYPE_13__ {int (* free ) (TYPE_2__*) ;} ;
struct TYPE_11__ {char* name; void* bit_num; void* sz; } ;
typedef TYPE_3__ RList ;


 TYPE_2__* calloc (int,int) ;
 int free (TYPE_2__*) ;
 int isdigit (char) ;
 int r_list_free (TYPE_3__*) ;
 TYPE_3__* r_list_new () ;
 int r_list_push (TYPE_3__*,TYPE_2__*) ;
 char* strchr (char*,char) ;
 int strncpy (char*,char*,int) ;
 char* strstr (char*,char*) ;
 scalar_t__ strtoul (char*,int *,int) ;

__attribute__((used)) static RList* _extract_flags(char *flagstr) {
 char *tmp1, *tmp2, *flagsend, *field_start, *field_end;
 ut64 num_fields, type_sz, name_sz;
 gdbr_xml_flags_t *tmpflag = ((void*)0);
 RList *flags;
 if (!(flags = r_list_new ())) {
  return ((void*)0);
 }
 flags->free = free;
 while ((flagstr = strstr (flagstr, "<flags"))) {
  if (!(flagsend = strstr (flagstr, "</flags>"))) {
   goto exit_err;
  }
  *flagsend = '\0';
  if (!(tmpflag = calloc (1, sizeof (gdbr_xml_flags_t)))) {
   goto exit_err;
  }

  if (!(tmp1 = strstr (flagstr, "id="))) {
   goto exit_err;
  }
  tmp1 += 4;
  if (!(tmp2 = strchr (tmp1, '"'))) {
   goto exit_err;
  }
  *tmp2 = '\0';
  type_sz = sizeof (tmpflag->type);
  strncpy (tmpflag->type, tmp1, type_sz - 1);
  tmpflag->type[type_sz - 1] = '\0';
  *tmp2 = '"';

  if (!(tmp1 = strstr (flagstr, "size="))) {
   goto exit_err;
  }
  tmp1 += 6;
  if (!(tmpflag->num_bits = (ut32) strtoul (tmp1, ((void*)0), 10))) {
   goto exit_err;
  }
  tmpflag->num_bits *= 8;

  num_fields = 0;
  field_start = flagstr;
  while ((field_start = strstr (field_start, "<field"))) {

   if (num_fields >= 64) {
    break;
   }
   if (!(field_end = strstr (field_start, "/>"))) {
    goto exit_err;
   }
   *field_end = '\0';

   if (!(tmp1 = strstr (field_start, "name="))) {
    goto exit_err;
   }
   tmp1 += 6;
   if (!(tmp2 = strchr (tmp1, '"'))) {
    goto exit_err;
   }

   if (tmp2 - tmp1 <= 1) {
    *field_end = '/';
    field_start = field_end + 1;
    continue;
   }
   *tmp2 = '\0';
   name_sz = sizeof (tmpflag->fields[num_fields].name);
   strncpy (tmpflag->fields[num_fields].name, tmp1, name_sz - 1);
   tmpflag->fields[num_fields].name[name_sz - 1] = '\0';
   *tmp2 = '"';

   if (!(tmp1 = strstr (field_start, "start="))) {
    goto exit_err;
   }
   tmp1 += 7;
   if (!isdigit (*tmp1)) {
    goto exit_err;
   }
   tmpflag->fields[num_fields].bit_num = (ut32) strtoul (tmp1, ((void*)0), 10);

   if (!(tmp1 = strstr (field_start, "end="))) {
    goto exit_err;
   }
   tmp1 += 5;
   if (!isdigit (*tmp1)) {
    goto exit_err;
   }
   tmpflag->fields[num_fields].sz = (ut32) strtoul (tmp1, ((void*)0), 10) + 1;
   tmpflag->fields[num_fields].sz -= tmpflag->fields[num_fields].bit_num;
   num_fields++;
   *field_end = '/';
   field_start = field_end + 1;
  }
  tmpflag->num_fields = num_fields;
  r_list_push (flags, tmpflag);
  *flagsend = '<';
  flagstr = flagsend + 1;
 }
 return flags;
exit_err:
 if (flags) {
  r_list_free (flags);
 }
 free (tmpflag);
 return ((void*)0);
}
