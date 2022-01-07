
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int dwSize; int dwObjSize; int dwFlags; unsigned int dwNumObjs; TYPE_1__* rgodf; int dwDataSize; } ;
struct TYPE_4__ {int dwFlags; int dwType; int dwOfs; int pguid; } ;
typedef int DIOBJECTDATAFORMAT ;
typedef TYPE_2__ DIDATAFORMAT ;




 int TRACE (char*,...) ;
 int WARN (char*,int) ;
 int _dump_EnumObjects_flags (int ) ;
 int _dump_ObjectDataFormat_flags (int ) ;
 int _dump_dinput_GUID (int ) ;
 int debugstr_guid (int ) ;

void _dump_DIDATAFORMAT(const DIDATAFORMAT *df) {
    unsigned int i;

    TRACE("Dumping DIDATAFORMAT structure:\n");
    TRACE("  - dwSize: %d\n", df->dwSize);
    if (df->dwSize != sizeof(DIDATAFORMAT)) {
        WARN("Non-standard DIDATAFORMAT structure size %d\n", df->dwSize);
    }
    TRACE("  - dwObjsize: %d\n", df->dwObjSize);
    if (df->dwObjSize != sizeof(DIOBJECTDATAFORMAT)) {
        WARN("Non-standard DIOBJECTDATAFORMAT structure size %d\n", df->dwObjSize);
    }
    TRACE("  - dwFlags: 0x%08x (", df->dwFlags);
    switch (df->dwFlags) {
        case 129: TRACE("DIDF_ABSAXIS"); break;
 case 128: TRACE("DIDF_RELAXIS"); break;
 default: TRACE("unknown"); break;
    }
    TRACE(")\n");
    TRACE("  - dwDataSize: %d\n", df->dwDataSize);
    TRACE("  - dwNumObjs: %d\n", df->dwNumObjs);

    for (i = 0; i < df->dwNumObjs; i++) {
 TRACE("  - Object %d:\n", i);
 TRACE("      * GUID: %s ('%s')\n", debugstr_guid(df->rgodf[i].pguid), _dump_dinput_GUID(df->rgodf[i].pguid));
        TRACE("      * dwOfs: %d\n", df->rgodf[i].dwOfs);
        TRACE("      * dwType: 0x%08x\n", df->rgodf[i].dwType);
 TRACE("        "); _dump_EnumObjects_flags(df->rgodf[i].dwType); TRACE("\n");
        TRACE("      * dwFlags: 0x%08x\n", df->rgodf[i].dwFlags);
 TRACE("        "); _dump_ObjectDataFormat_flags(df->rgodf[i].dwFlags); TRACE("\n");
    }
}
