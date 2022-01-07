
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wined3d_gl_info {scalar_t__* supported; } ;
typedef int UINT64 ;
typedef int GLuint64 ;
typedef int GLuint ;


 size_t ARB_TIMER_QUERY ;
 int GL_EXTCALL (int ) ;
 int GL_QUERY_RESULT ;
 int glGetQueryObjectui64v (int ,int ,int *) ;
 int glGetQueryObjectuiv (int ,int ,int *) ;

__attribute__((used)) static UINT64 get_query_result64(GLuint id, const struct wined3d_gl_info *gl_info)
{
    if (gl_info->supported[ARB_TIMER_QUERY])
    {
        GLuint64 result;
        GL_EXTCALL(glGetQueryObjectui64v(id, GL_QUERY_RESULT, &result));
        return result;
    }
    else
    {
        GLuint result;
        GL_EXTCALL(glGetQueryObjectuiv(id, GL_QUERY_RESULT, &result));
        return result;
    }
}
