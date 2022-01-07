
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symt_udt {int dummy; } ;
struct symt {int dummy; } ;
struct ParseTypedefData {char* ptr; int idx; int buf; int module; } ;
typedef scalar_t__ DWORD64 ;
typedef int DWORD ;


 int PTS_ABORTIF (struct ParseTypedefData*,int) ;
 int TI_GET_LENGTH ;
 int TRUE ;
 int stabs_pts_read_id (struct ParseTypedefData*) ;
 int stabs_pts_read_method_info (struct ParseTypedefData*) ;
 int stabs_pts_read_number (struct ParseTypedefData*,long*) ;
 int stabs_pts_read_type_def (struct ParseTypedefData*,int *,struct symt**) ;
 int stabs_read_type_enum (float**) ;
 int strcat (char*,int ) ;
 char* strchr (char*,char) ;
 int strcpy (char*,char*) ;
 int symt_add_udt_element (int ,struct symt_udt*,char*,struct symt*,long,long) ;
 int symt_get_info (int ,struct symt*,int ,scalar_t__*) ;
 int symt_get_name (struct symt*) ;
 int symt_set_udt_size (int ,struct symt_udt*,long) ;

__attribute__((used)) static inline int stabs_pts_read_aggregate(struct ParseTypedefData* ptd,
                                           struct symt_udt* sdt)
{
    long sz, ofs;
    struct symt* adt;
    struct symt* dt = ((void*)0);
    int idx;
    int doadd;

    PTS_ABORTIF(ptd, stabs_pts_read_number(ptd, &sz) == -1);

    doadd = symt_set_udt_size(ptd->module, sdt, sz);
    if (*ptd->ptr == '!')
    {
        long num_classes;

        ptd->ptr++;
        PTS_ABORTIF(ptd, stabs_pts_read_number(ptd, &num_classes) == -1);
        PTS_ABORTIF(ptd, *ptd->ptr++ != ',');
        while (--num_classes >= 0)
        {
            ptd->ptr += 2;
            PTS_ABORTIF(ptd, stabs_pts_read_number(ptd, &ofs) == -1);
            PTS_ABORTIF(ptd, *ptd->ptr++ != ',');

            PTS_ABORTIF(ptd, stabs_pts_read_type_def(ptd, ((void*)0), &adt) == -1);

            if (doadd && adt)
            {
                char tmp[256];
                DWORD64 size;

                strcpy(tmp, "__inherited_class_");
                strcat(tmp, symt_get_name(adt));







                symt_get_info(ptd->module, adt, TI_GET_LENGTH, &size);
                symt_add_udt_element(ptd->module, sdt, tmp, adt, ofs, (DWORD)size * 8);
            }
            PTS_ABORTIF(ptd, *ptd->ptr++ != ';');
        }

    }






    while (*ptd->ptr != ';')
    {

 idx = ptd->idx;

        if (ptd->ptr[0] == '$' && ptd->ptr[1] == 'v')
        {
            long x;

            if (ptd->ptr[2] == 'f')
            {

                ptd->ptr += 3;
                stabs_read_type_enum(&ptd->ptr);
                PTS_ABORTIF(ptd, *ptd->ptr++ != ':');
                PTS_ABORTIF(ptd, stabs_pts_read_type_def(ptd, ((void*)0), &dt) == -1);
                PTS_ABORTIF(ptd, *ptd->ptr++ != ',');
                PTS_ABORTIF(ptd, stabs_pts_read_number(ptd, &x) == -1);
                PTS_ABORTIF(ptd, *ptd->ptr++ != ';');
                ptd->idx = idx;
                continue;
            }
            else if (ptd->ptr[2] == 'b')
            {
                ptd->ptr += 3;
                PTS_ABORTIF(ptd, stabs_pts_read_type_def(ptd, ((void*)0), &dt) == -1);
                PTS_ABORTIF(ptd, *ptd->ptr++ != ':');
                PTS_ABORTIF(ptd, stabs_pts_read_type_def(ptd, ((void*)0), &dt) == -1);
                PTS_ABORTIF(ptd, *ptd->ptr++ != ',');
                PTS_ABORTIF(ptd, stabs_pts_read_number(ptd, &x) == -1);
                PTS_ABORTIF(ptd, *ptd->ptr++ != ';');
                ptd->idx = idx;
                continue;
            }
        }

 PTS_ABORTIF(ptd, stabs_pts_read_id(ptd) == -1);



        if (*ptd->ptr == ':')
        {
            ptd->ptr++;
            stabs_pts_read_method_info(ptd);
            ptd->idx = idx;
            continue;
        }
        else
        {

            if (*ptd->ptr == '/') ptd->ptr += 2;
        }
 PTS_ABORTIF(ptd, stabs_pts_read_type_def(ptd, ((void*)0), &adt) == -1);

        switch (*ptd->ptr++)
        {
        case ',':
            PTS_ABORTIF(ptd, stabs_pts_read_number(ptd, &ofs) == -1);
            PTS_ABORTIF(ptd, *ptd->ptr++ != ',');
            PTS_ABORTIF(ptd, stabs_pts_read_number(ptd, &sz) == -1);
            PTS_ABORTIF(ptd, *ptd->ptr++ != ';');

            if (doadd) symt_add_udt_element(ptd->module, sdt, ptd->buf + idx, adt, ofs, sz);
            break;
        case ':':
            {
                const char* tmp;

                PTS_ABORTIF(ptd, !(tmp = strchr(ptd->ptr, ';')));
                ptd->ptr = tmp + 1;
            }
            break;
        default:
            PTS_ABORTIF(ptd, TRUE);
        }
 ptd->idx = idx;
    }
    PTS_ABORTIF(ptd, *ptd->ptr++ != ';');
    if (*ptd->ptr == '~')
    {
        ptd->ptr++;
        PTS_ABORTIF(ptd, *ptd->ptr++ != '%');
        PTS_ABORTIF(ptd, stabs_pts_read_type_def(ptd, ((void*)0), &dt) == -1);
        PTS_ABORTIF(ptd, *ptd->ptr++ != ';');
    }
    return 0;
}
