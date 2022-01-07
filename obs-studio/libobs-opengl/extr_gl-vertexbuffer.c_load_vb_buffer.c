
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shader_attrib {int index; int type; } ;
struct gs_vertex_buffer {int dummy; } ;
typedef int GLuint ;
typedef int GLint ;
typedef int GLenum ;


 int GL_ARRAY_BUFFER ;
 int GL_TRUE ;
 int LOG_ERROR ;
 int blog (int ,char*) ;
 int get_vb_buffer (struct gs_vertex_buffer*,int ,int ,int *,int *) ;
 int glEnableVertexAttribArray (int ) ;
 int glVertexAttribPointer (int ,int ,int ,int ,int ,int ) ;
 int gl_bind_buffer (int ,int ) ;
 int gl_success (char*) ;

__attribute__((used)) static bool load_vb_buffer(struct shader_attrib *attrib,
      struct gs_vertex_buffer *vb, GLint id)
{
 GLenum type;
 GLint width;
 GLuint buffer;
 bool success = 1;

 buffer = get_vb_buffer(vb, attrib->type, attrib->index, &width, &type);
 if (!buffer) {
  blog(LOG_ERROR, "Vertex buffer does not have the required "
    "inputs for vertex shader");
  return 0;
 }

 if (!gl_bind_buffer(GL_ARRAY_BUFFER, buffer))
  return 0;

 glVertexAttribPointer(id, width, type, GL_TRUE, 0, 0);
 if (!gl_success("glVertexAttribPointer"))
  success = 0;

 glEnableVertexAttribArray(id);
 if (!gl_success("glEnableVertexAttribArray"))
  success = 0;

 if (!gl_bind_buffer(GL_ARRAY_BUFFER, 0))
  success = 0;

 return success;
}
