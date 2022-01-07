
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct symt {int tag; } ;
struct TYPE_6__ {char const* name; } ;
struct symt_udt {struct symt symt; TYPE_1__ hash_elt; } ;
struct symt_enum {int dummy; } ;
struct ParseTypedefData {char* ptr; int idx; int module; int buf; } ;
typedef enum UdtKind { ____Placeholder_UdtKind } UdtKind ;
struct TYPE_10__ {struct symt symt; } ;
struct TYPE_9__ {struct symt symt; } ;
struct TYPE_8__ {struct symt symt; } ;
struct TYPE_7__ {struct symt symt; } ;


 int ERR (char*,...) ;
 int PTS_ABORTIF (struct ParseTypedefData*,int) ;
 int SymTagUDT ;
 int TRACE (char*,long,long,int ) ;
 int UdtStruct ;
 int UdtUnion ;
 int assert (int) ;
 int btVoid ;
 int debugstr_a (char const*) ;
 struct symt** stabs_find_ref (long,long) ;
 int stabs_get_basic (struct ParseTypedefData*,int,struct symt**) ;
 int stabs_pts_read_aggregate (struct ParseTypedefData*,struct symt_udt*) ;
 int stabs_pts_read_array (struct ParseTypedefData*,struct symt**) ;
 int stabs_pts_read_enum (struct ParseTypedefData*,struct symt_enum*) ;
 int stabs_pts_read_id (struct ParseTypedefData*) ;
 int stabs_pts_read_number (struct ParseTypedefData*,long*) ;
 int stabs_pts_read_range (struct ParseTypedefData*,char const*,struct symt**) ;
 int stabs_pts_read_type_reference (struct ParseTypedefData*,long*,long*) ;
 int strcmp (char const*,char const*) ;
 unsigned int strlen (char const*) ;
 int symt_get_name (struct symt*) ;
 TYPE_5__* symt_new_basic (int ,int ,char const*,int ) ;
 TYPE_4__* symt_new_enum (int ,char const*,struct symt*) ;
 TYPE_3__* symt_new_function_signature (int ,struct symt*,int) ;
 TYPE_2__* symt_new_pointer (int ,struct symt*,int) ;
 struct symt_udt* symt_new_udt (int ,char const*,int ,int) ;

__attribute__((used)) static int stabs_pts_read_type_def(struct ParseTypedefData* ptd, const char* typename,
                                   struct symt** ret_dt)
{
    int idx;
    long sz = -1;
    struct symt* new_dt = ((void*)0);
    struct symt* ref_dt;
    long filenr1, subnr1, tmp;





    PTS_ABORTIF(ptd, stabs_pts_read_type_reference(ptd, &filenr1, &subnr1) == -1);

    while (*ptd->ptr == '=')
    {
 ptd->ptr++;
 PTS_ABORTIF(ptd, new_dt != ((void*)0));


 switch (*ptd->ptr)
        {
 case '@':
     if (*++ptd->ptr == 's')
            {
  ptd->ptr++;
  if (stabs_pts_read_number(ptd, &sz) == -1)
                {
      ERR("Not an attribute... NIY\n");
      ptd->ptr -= 2;
      return -1;
  }
  PTS_ABORTIF(ptd, *ptd->ptr++ != ';');
     }
     break;
 }

 switch (*ptd->ptr++)
        {
 case '*':
        case '&':
     PTS_ABORTIF(ptd, stabs_pts_read_type_def(ptd, ((void*)0), &ref_dt) == -1);
     new_dt = &symt_new_pointer(ptd->module, ref_dt, sizeof(void*))->symt;
           break;
        case 'k':
        case 'B':

            PTS_ABORTIF(ptd, stabs_pts_read_type_def(ptd, typename, &new_dt) == -1);
     break;
 case '(':
     ptd->ptr--;
            PTS_ABORTIF(ptd, stabs_pts_read_type_def(ptd, typename, &new_dt) == -1);
     break;
 case 'a':
     PTS_ABORTIF(ptd, stabs_pts_read_array(ptd, &new_dt) == -1);
     break;
 case 'r':
     PTS_ABORTIF(ptd, stabs_pts_read_range(ptd, typename, &new_dt) == -1);
     assert(!*stabs_find_ref(filenr1, subnr1));
     *stabs_find_ref(filenr1, subnr1) = new_dt;
     break;
 case 'f':
     PTS_ABORTIF(ptd, stabs_pts_read_type_def(ptd, ((void*)0), &ref_dt) == -1);
     new_dt = &symt_new_function_signature(ptd->module, ref_dt, -1)->symt;
     break;
 case 'e':
            stabs_get_basic(ptd, 1 , &ref_dt);
            new_dt = &symt_new_enum(ptd->module, typename, ref_dt)->symt;
     PTS_ABORTIF(ptd, stabs_pts_read_enum(ptd, (struct symt_enum*)new_dt) == -1);
     break;
 case 's':
 case 'u':
            {
                struct symt_udt* udt;
                enum UdtKind kind = (ptd->ptr[-1] == 's') ? UdtStruct : UdtUnion;

                udt = (struct symt_udt*)*stabs_find_ref(filenr1, subnr1);
                if (!udt)
                {
                    udt = symt_new_udt(ptd->module, typename, 0, kind);



                    new_dt = *stabs_find_ref(filenr1, subnr1) = &udt->symt;
                }
                else
                {
                    unsigned l1, l2;
                    if (udt->symt.tag != SymTagUDT)
                    {
                        ERR("Forward declaration (%p/%s) is not an aggregate (%u)\n",
                            udt, symt_get_name(&udt->symt), udt->symt.tag);
                        return -1;
                    }
                    l1 = strlen(udt->hash_elt.name);
                    l2 = strlen(typename);
                    if (l1 > l2 || strcmp(udt->hash_elt.name, typename + l2 - l1))
                        ERR("Forward declaration name mismatch %s <> %s\n",
                            udt->hash_elt.name, typename);
                    new_dt = &udt->symt;
                }
                PTS_ABORTIF(ptd, stabs_pts_read_aggregate(ptd, udt) == -1);
     }
     break;
 case 'x':
     idx = ptd->idx;
            tmp = *ptd->ptr++;
     PTS_ABORTIF(ptd, stabs_pts_read_id(ptd) == -1);
     switch (tmp)
            {
     case 'e':
                stabs_get_basic(ptd, 1 , &ref_dt);
                new_dt = &symt_new_enum(ptd->module, ptd->buf + idx, ref_dt)->symt;
                break;
     case 's':
                new_dt = &symt_new_udt(ptd->module, ptd->buf + idx, 0, UdtStruct)->symt;
         break;
            case 'u':
                new_dt = &symt_new_udt(ptd->module, ptd->buf + idx, 0, UdtUnion)->symt;
         break;
     default:
                return -1;
     }
     ptd->idx = idx;
     break;
 case '-':
            {
                PTS_ABORTIF(ptd, stabs_pts_read_number(ptd, &tmp) == -1);
                PTS_ABORTIF(ptd, stabs_get_basic(ptd, tmp, &new_dt) == -1);
                PTS_ABORTIF(ptd, *ptd->ptr++ != ';');
            }
     break;
        case '#':
            if (*ptd->ptr == '#')
            {
                ptd->ptr++;
                PTS_ABORTIF(ptd, stabs_pts_read_type_def(ptd, ((void*)0), &ref_dt) == -1);
                new_dt = &symt_new_function_signature(ptd->module, ref_dt, -1)->symt;
            }
            else
            {
                struct symt* cls_dt;
                struct symt* pmt_dt;

                PTS_ABORTIF(ptd, stabs_pts_read_type_def(ptd, ((void*)0), &cls_dt) == -1);
                PTS_ABORTIF(ptd, *ptd->ptr++ != ',');
                PTS_ABORTIF(ptd, stabs_pts_read_type_def(ptd, ((void*)0), &ref_dt) == -1);
                new_dt = &symt_new_function_signature(ptd->module, ref_dt, -1)->symt;
                while (*ptd->ptr == ',')
                {
                    ptd->ptr++;
                    PTS_ABORTIF(ptd, stabs_pts_read_type_def(ptd, ((void*)0), &pmt_dt) == -1);
                }
            }
            break;
        case 'R':
            {
                long type, len, unk;
                int basic;

                PTS_ABORTIF(ptd, stabs_pts_read_number(ptd, &type) == -1);
                PTS_ABORTIF(ptd, *ptd->ptr++ != ';');
                PTS_ABORTIF(ptd, stabs_pts_read_number(ptd, &len) == -1);
                PTS_ABORTIF(ptd, *ptd->ptr++ != ';');
                PTS_ABORTIF(ptd, stabs_pts_read_number(ptd, &unk) == -1);
                PTS_ABORTIF(ptd, *ptd->ptr++ != ';');

                switch (type)
                {
                case 1: basic = 12; break;
                case 2: basic = 13; break;
                case 3: basic = 25; break;
                case 4: basic = 26; break;
                case 5: basic = 35; break;
                case 6: basic = 14; break;
                default: PTS_ABORTIF(ptd, 1);
                }
                PTS_ABORTIF(ptd, stabs_get_basic(ptd, basic, &new_dt) == -1);
            }
            break;
 default:
     ERR("Unknown type '%c'\n", ptd->ptr[-1]);
     return -1;
 }
    }

    if (!new_dt)
    {

 new_dt = *stabs_find_ref(filenr1, subnr1);



        if (!new_dt && typename)
        {
            new_dt = &symt_new_basic(ptd->module, btVoid, typename, 0)->symt;
            PTS_ABORTIF(ptd, strcmp(typename, "void"));
        }
    }

    *stabs_find_ref(filenr1, subnr1) = *ret_dt = new_dt;

    TRACE("Adding (%ld,%ld) %s\n", filenr1, subnr1, debugstr_a(typename));

    return 0;
}
