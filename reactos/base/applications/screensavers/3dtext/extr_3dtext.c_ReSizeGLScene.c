
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLvoid ;
typedef int GLsizei ;
typedef int GLfloat ;


 int GL_MODELVIEW ;
 int GL_PROJECTION ;
 int glLoadIdentity () ;
 int glMatrixMode (int ) ;
 int glViewport (int ,int ,int,int) ;
 int gluPerspective (float,int,float,float) ;

GLvoid ReSizeGLScene(GLsizei Width, GLsizei Height)
{

    if (Height == 0)
    {

        Height = 1;
    }


    glViewport(0, 0, Width, Height);


    glMatrixMode(GL_PROJECTION);


    glLoadIdentity();


    gluPerspective(45.0f, (GLfloat)Width / (GLfloat)Height, 0.1f, 100.0f);


    glMatrixMode(GL_MODELVIEW);
}
