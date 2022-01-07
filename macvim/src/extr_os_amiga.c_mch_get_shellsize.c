
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Window {scalar_t__ Title; } ;
struct InfoData {scalar_t__ id_InUse; scalar_t__ id_VolumeNode; } ;
struct IOStdReq {scalar_t__ io_Unit; } ;
struct ConUnit {int cu_YMax; int cu_XMax; } ;
typedef int char_u ;
typedef int ULONG ;
typedef scalar_t__ BPTR ;


 scalar_t__ ACTION_DISK_INFO ;
 struct InfoData* AllocDosObject (int ,int ) ;
 int Columns ;
 int DOS_INFODATA ;
 int FAIL ;
 scalar_t__ FALSE ;
 int FreeDosObject (int ,struct InfoData*) ;
 int Info (int ,struct InfoData*) ;
 int MP (int ) ;
 int OK ;
 int OUT_STR (char*) ;
 int Rows ;
 int _ (char*) ;
 scalar_t__ dos_packet (int ,long,int) ;
 int mch_errmsg (int ) ;
 int * oldwindowtitle ;
 int out_flush () ;
 int raw_out ;
 scalar_t__ size_set ;
 scalar_t__ term_console ;
 struct Window* wb_window ;

int
mch_get_shellsize()
{
    struct ConUnit *conUnit;

    char id_a[sizeof(struct InfoData) + 3];

    struct InfoData *id=0;

    if (!term_console)
 goto out;






    id = (struct InfoData *)(((long)id_a + 3L) & ~3L);







    if (size_set)
 OUT_STR("\233t\233u");
    out_flush();





    if (dos_packet(MP(raw_out), (long)ACTION_DISK_INFO, ((ULONG) id) >> 2) == 0
     || (wb_window = (struct Window *)id->id_VolumeNode) == ((void*)0))

    {


 term_console = FALSE;
 goto out;
    }
    if (oldwindowtitle == ((void*)0))
 oldwindowtitle = (char_u *)wb_window->Title;
    if (id->id_InUse == (BPTR)((void*)0))
    {
 mch_errmsg(_("mch_get_shellsize: not a console??\n"));
 return FAIL;
    }
    conUnit = (struct ConUnit *) ((struct IOStdReq *) id->id_InUse)->io_Unit;


    Rows = conUnit->cu_YMax + 1;
    Columns = conUnit->cu_XMax + 1;
    if (Rows < 0 || Rows > 200)
    {
 Columns = 80;
 Rows = 24;
 term_console = FALSE;
 return FAIL;
    }

    return OK;
out:




    return FAIL;
}
