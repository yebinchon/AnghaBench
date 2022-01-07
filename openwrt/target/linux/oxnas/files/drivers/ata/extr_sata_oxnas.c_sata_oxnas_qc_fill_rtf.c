
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_queued_cmd {int result_tf; int ap; } ;


 int sata_oxnas_tf_read (int ,int *) ;

__attribute__((used)) static bool sata_oxnas_qc_fill_rtf(struct ata_queued_cmd *qc)
{


 sata_oxnas_tf_read(qc->ap, &qc->result_tf);
 return 1;
}
