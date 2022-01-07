
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwriter_shader {int dummy; } ;


 int BWRITERDECLUSAGE_COLOR ;
 int BWRITERDECLUSAGE_FOG ;
 int BWRITERDECLUSAGE_POSITION ;
 int BWRITERDECLUSAGE_PSIZE ;
 int BWRITERDECLUSAGE_TEXCOORD ;
 int BWRITERSP_WRITEMASK_ALL ;
 int OD0_REG ;
 int OD1_REG ;
 int OFOG_REG ;
 int OFOG_WRITEMASK ;
 int OPOS_REG ;
 int OPTS_REG ;
 int OPTS_WRITEMASK ;
 int OT0_REG ;
 int OT1_REG ;
 int OT2_REG ;
 int OT3_REG ;
 int OT4_REG ;
 int OT5_REG ;
 int OT6_REG ;
 int OT7_REG ;
 int TRUE ;
 int record_declaration (struct bwriter_shader*,int ,int,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void gen_oldvs_output(struct bwriter_shader *shader) {
    record_declaration(shader, BWRITERDECLUSAGE_POSITION, 0, 0, TRUE, OPOS_REG, BWRITERSP_WRITEMASK_ALL, TRUE);
    record_declaration(shader, BWRITERDECLUSAGE_TEXCOORD, 0, 0, TRUE, OT0_REG, BWRITERSP_WRITEMASK_ALL, TRUE);
    record_declaration(shader, BWRITERDECLUSAGE_TEXCOORD, 1, 0, TRUE, OT1_REG, BWRITERSP_WRITEMASK_ALL, TRUE);
    record_declaration(shader, BWRITERDECLUSAGE_TEXCOORD, 2, 0, TRUE, OT2_REG, BWRITERSP_WRITEMASK_ALL, TRUE);
    record_declaration(shader, BWRITERDECLUSAGE_TEXCOORD, 3, 0, TRUE, OT3_REG, BWRITERSP_WRITEMASK_ALL, TRUE);
    record_declaration(shader, BWRITERDECLUSAGE_TEXCOORD, 4, 0, TRUE, OT4_REG, BWRITERSP_WRITEMASK_ALL, TRUE);
    record_declaration(shader, BWRITERDECLUSAGE_TEXCOORD, 5, 0, TRUE, OT5_REG, BWRITERSP_WRITEMASK_ALL, TRUE);
    record_declaration(shader, BWRITERDECLUSAGE_TEXCOORD, 6, 0, TRUE, OT6_REG, BWRITERSP_WRITEMASK_ALL, TRUE);
    record_declaration(shader, BWRITERDECLUSAGE_TEXCOORD, 7, 0, TRUE, OT7_REG, BWRITERSP_WRITEMASK_ALL, TRUE);
    record_declaration(shader, BWRITERDECLUSAGE_FOG, 0, 0, TRUE, OFOG_REG, OFOG_WRITEMASK, TRUE);
    record_declaration(shader, BWRITERDECLUSAGE_PSIZE, 0, 0, TRUE, OPTS_REG, OPTS_WRITEMASK, TRUE);
    record_declaration(shader, BWRITERDECLUSAGE_COLOR, 0, 0, TRUE, OD0_REG, BWRITERSP_WRITEMASK_ALL, TRUE);
    record_declaration(shader, BWRITERDECLUSAGE_COLOR, 1, 0, TRUE, OD1_REG, BWRITERSP_WRITEMASK_ALL, TRUE);
}
