
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int cmds; int ebo; int vbo; int font_tex; int prog; int frag_shdr; int vert_shdr; } ;


 int glDeleteBuffers (int,int *) ;
 int glDeleteProgram (int ) ;
 int glDeleteShader (int ) ;
 int glDeleteTextures (int,int *) ;
 int glDetachShader (int ,int ) ;
 int nk_buffer_free (int *) ;

__attribute__((used)) static void
device_shutdown(struct device *dev)
{
    glDetachShader(dev->prog, dev->vert_shdr);
    glDetachShader(dev->prog, dev->frag_shdr);
    glDeleteShader(dev->vert_shdr);
    glDeleteShader(dev->frag_shdr);
    glDeleteProgram(dev->prog);
    glDeleteTextures(1, &dev->font_tex);
    glDeleteBuffers(1, &dev->vbo);
    glDeleteBuffers(1, &dev->ebo);
    nk_buffer_free(&dev->cmds);
}
