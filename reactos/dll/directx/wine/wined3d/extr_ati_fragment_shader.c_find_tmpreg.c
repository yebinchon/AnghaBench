
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tex_used ;
struct texture_stage_op {scalar_t__ cop; scalar_t__ carg1; scalar_t__ carg2; scalar_t__ carg0; scalar_t__ aarg1; scalar_t__ aarg2; scalar_t__ aarg0; scalar_t__ dst; } ;
typedef scalar_t__ GLuint ;
typedef int BOOL ;


 int FIXME (char*) ;
 scalar_t__ GL_NONE ;
 scalar_t__ GL_REG_0_ATI ;
 scalar_t__ GL_REG_1_ATI ;
 int MAX_TEXTURES ;
 int TRUE ;
 scalar_t__ WINED3DTA_TEMP ;
 scalar_t__ WINED3DTA_TEXTURE ;
 scalar_t__ WINED3D_TOP_DISABLE ;
 int memset (int *,int ,int) ;
 scalar_t__ tempreg ;

__attribute__((used)) static GLuint find_tmpreg(const struct texture_stage_op op[MAX_TEXTURES])
{
    int lowest_read = -1;
    int lowest_write = -1;
    int i;
    BOOL tex_used[MAX_TEXTURES];

    memset(tex_used, 0, sizeof(tex_used));
    for (i = 0; i < MAX_TEXTURES; ++i)
    {
        if (op[i].cop == WINED3D_TOP_DISABLE)
            break;

        if(lowest_read == -1 &&
          (op[i].carg1 == WINED3DTA_TEMP || op[i].carg2 == WINED3DTA_TEMP || op[i].carg0 == WINED3DTA_TEMP ||
           op[i].aarg1 == WINED3DTA_TEMP || op[i].aarg2 == WINED3DTA_TEMP || op[i].aarg0 == WINED3DTA_TEMP)) {
            lowest_read = i;
        }

        if(lowest_write == -1 && op[i].dst == tempreg) {
            lowest_write = i;
        }

        if(op[i].carg1 == WINED3DTA_TEXTURE || op[i].carg2 == WINED3DTA_TEXTURE || op[i].carg0 == WINED3DTA_TEXTURE ||
           op[i].aarg1 == WINED3DTA_TEXTURE || op[i].aarg2 == WINED3DTA_TEXTURE || op[i].aarg0 == WINED3DTA_TEXTURE) {
            tex_used[i] = TRUE;
        }
    }


    if(lowest_read == -1) return GL_NONE;

    if(lowest_write >= lowest_read) {
        FIXME("Temp register read before being written\n");
    }

    if(lowest_write == -1) {

        FIXME("Temp register read without being written\n");
        return GL_REG_1_ATI;
    } else if(lowest_write >= 1) {




        return GL_REG_1_ATI;
    } else {



        for(i = 1; i < 6; i++) {
            if(!tex_used[i]) {
                return GL_REG_0_ATI + i;
            }
        }

        FIXME("Could not find a register for the temporary register\n");
        return 0;
    }
}
