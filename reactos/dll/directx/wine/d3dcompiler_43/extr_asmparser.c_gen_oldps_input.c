
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwriter_shader {int dummy; } ;
typedef int DWORD ;


 int BWRITERDECLUSAGE_COLOR ;
 int BWRITERDECLUSAGE_TEXCOORD ;
 int BWRITERSP_WRITEMASK_ALL ;
 int C0_VARYING ;
 int C1_VARYING ;
 int FALSE ;
 int T0_VARYING ;
 int T1_VARYING ;
 int T2_VARYING ;
 int T3_VARYING ;
 int T4_VARYING ;
 int T5_VARYING ;
 int T6_VARYING ;
 int T7_VARYING ;
 int TRUE ;
 int record_declaration (struct bwriter_shader*,int ,int,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void gen_oldps_input(struct bwriter_shader *shader, DWORD texcoords) {
    switch(texcoords) {
        case 8: record_declaration(shader, BWRITERDECLUSAGE_TEXCOORD, 7, 0, FALSE, T7_VARYING, BWRITERSP_WRITEMASK_ALL, TRUE);

        case 7: record_declaration(shader, BWRITERDECLUSAGE_TEXCOORD, 6, 0, FALSE, T6_VARYING, BWRITERSP_WRITEMASK_ALL, TRUE);

        case 6: record_declaration(shader, BWRITERDECLUSAGE_TEXCOORD, 5, 0, FALSE, T5_VARYING, BWRITERSP_WRITEMASK_ALL, TRUE);

        case 5: record_declaration(shader, BWRITERDECLUSAGE_TEXCOORD, 4, 0, FALSE, T4_VARYING, BWRITERSP_WRITEMASK_ALL, TRUE);

        case 4: record_declaration(shader, BWRITERDECLUSAGE_TEXCOORD, 3, 0, FALSE, T3_VARYING, BWRITERSP_WRITEMASK_ALL, TRUE);

        case 3: record_declaration(shader, BWRITERDECLUSAGE_TEXCOORD, 2, 0, FALSE, T2_VARYING, BWRITERSP_WRITEMASK_ALL, TRUE);

        case 2: record_declaration(shader, BWRITERDECLUSAGE_TEXCOORD, 1, 0, FALSE, T1_VARYING, BWRITERSP_WRITEMASK_ALL, TRUE);

        case 1: record_declaration(shader, BWRITERDECLUSAGE_TEXCOORD, 0, 0, FALSE, T0_VARYING, BWRITERSP_WRITEMASK_ALL, TRUE);
    };
    record_declaration(shader, BWRITERDECLUSAGE_COLOR, 0, 0, FALSE, C0_VARYING, BWRITERSP_WRITEMASK_ALL, TRUE);
    record_declaration(shader, BWRITERDECLUSAGE_COLOR, 1, 0, FALSE, C1_VARYING, BWRITERSP_WRITEMASK_ALL, TRUE);
}
