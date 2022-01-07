
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tilegx_pipeline ;
struct tilegx_opcode {int pipes; } ;


 int TILEGX_NUM_PIPELINE_ENCODINGS ;

tilegx_pipeline get_any_valid_pipe(const struct tilegx_opcode* opcode)
{

 int pipe;
 for (pipe = 0; ((opcode->pipes & (1 << pipe)) == 0 && pipe < TILEGX_NUM_PIPELINE_ENCODINGS); pipe++)
  ;
 return (tilegx_pipeline)(pipe);
}
