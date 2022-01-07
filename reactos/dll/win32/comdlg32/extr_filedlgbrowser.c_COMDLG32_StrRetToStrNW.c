
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int mkid; } ;
struct TYPE_8__ {scalar_t__ uOffset; scalar_t__ cStr; int pOleStr; } ;
struct TYPE_9__ {int uType; TYPE_1__ u; } ;
typedef char* LPWSTR ;
typedef int LPVOID ;
typedef TYPE_2__* LPSTRRET ;
typedef scalar_t__ LPCSTR ;
typedef TYPE_3__* LPCITEMIDLIST ;
typedef int DWORD ;
typedef int BOOL ;


 int CP_ACP ;
 int CoTaskMemFree (int ) ;
 int FALSE ;
 int FIXME (char*) ;
 int MultiByteToWideChar (int ,int ,scalar_t__,int,int ,int ) ;



 int TRACE (char*,int ,int ,TYPE_2__*,TYPE_3__*) ;
 int TRUE ;
 int lstrcpynW (int ,int ,int ) ;

__attribute__((used)) static BOOL COMDLG32_StrRetToStrNW (LPVOID dest, DWORD len, LPSTRRET src, LPCITEMIDLIST pidl)
{
        TRACE("dest=%p len=0x%x strret=%p pidl=%p\n", dest , len, src, pidl);

 switch (src->uType)
 {
   case 128:
            lstrcpynW(dest, src->u.pOleStr, len);
     CoTaskMemFree(src->u.pOleStr);
     break;

   case 130:
            if (len && !MultiByteToWideChar( CP_ACP, 0, src->u.cStr, -1, dest, len ))
                ((LPWSTR)dest)[len-1] = 0;
     break;

   case 129:
     if (pidl)
     {
                if (len && !MultiByteToWideChar( CP_ACP, 0, ((LPCSTR)&pidl->mkid)+src->u.uOffset,
                                                 -1, dest, len ))
                    ((LPWSTR)dest)[len-1] = 0;
     }
     break;

   default:
     FIXME("unknown type!\n");
     if (len)
     { *(LPWSTR)dest = '\0';
     }
     return(FALSE);
 }
        return TRUE;
}
