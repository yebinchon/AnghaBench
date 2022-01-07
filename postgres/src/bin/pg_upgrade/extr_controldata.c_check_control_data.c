
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ align; scalar_t__ blocksz; scalar_t__ largesz; scalar_t__ walsz; scalar_t__ walseg; scalar_t__ ident; scalar_t__ index; scalar_t__ toast; scalar_t__ large_object; scalar_t__ date_is_int; scalar_t__ data_checksum_version; } ;
typedef TYPE_1__ ControlData ;


 int pg_fatal (char*) ;

void
check_control_data(ControlData *oldctrl,
       ControlData *newctrl)
{
 if (oldctrl->align == 0 || oldctrl->align != newctrl->align)
  pg_fatal("old and new pg_controldata alignments are invalid or do not match\n"
     "Likely one cluster is a 32-bit install, the other 64-bit\n");

 if (oldctrl->blocksz == 0 || oldctrl->blocksz != newctrl->blocksz)
  pg_fatal("old and new pg_controldata block sizes are invalid or do not match\n");

 if (oldctrl->largesz == 0 || oldctrl->largesz != newctrl->largesz)
  pg_fatal("old and new pg_controldata maximum relation segment sizes are invalid or do not match\n");

 if (oldctrl->walsz == 0 || oldctrl->walsz != newctrl->walsz)
  pg_fatal("old and new pg_controldata WAL block sizes are invalid or do not match\n");

 if (oldctrl->walseg == 0 || oldctrl->walseg != newctrl->walseg)
  pg_fatal("old and new pg_controldata WAL segment sizes are invalid or do not match\n");

 if (oldctrl->ident == 0 || oldctrl->ident != newctrl->ident)
  pg_fatal("old and new pg_controldata maximum identifier lengths are invalid or do not match\n");

 if (oldctrl->index == 0 || oldctrl->index != newctrl->index)
  pg_fatal("old and new pg_controldata maximum indexed columns are invalid or do not match\n");

 if (oldctrl->toast == 0 || oldctrl->toast != newctrl->toast)
  pg_fatal("old and new pg_controldata maximum TOAST chunk sizes are invalid or do not match\n");


 if (oldctrl->large_object != 0 &&
  oldctrl->large_object != newctrl->large_object)
  pg_fatal("old and new pg_controldata large-object chunk sizes are invalid or do not match\n");

 if (oldctrl->date_is_int != newctrl->date_is_int)
  pg_fatal("old and new pg_controldata date/time storage types do not match\n");
 if (oldctrl->data_checksum_version == 0 &&
  newctrl->data_checksum_version != 0)
  pg_fatal("old cluster does not use data checksums but the new one does\n");
 else if (oldctrl->data_checksum_version != 0 &&
    newctrl->data_checksum_version == 0)
  pg_fatal("old cluster uses data checksums but the new one does not\n");
 else if (oldctrl->data_checksum_version != newctrl->data_checksum_version)
  pg_fatal("old and new cluster pg_controldata checksum versions do not match\n");
}
