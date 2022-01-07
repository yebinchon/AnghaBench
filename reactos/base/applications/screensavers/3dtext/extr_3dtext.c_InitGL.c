
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLvoid ;
typedef scalar_t__ GLsizei ;
typedef int GLfloat ;


 int BuildFont () ;
 int GL_COLOR_MATERIAL ;
 int GL_DEPTH_TEST ;
 int GL_LESS ;
 int GL_LIGHT0 ;
 int GL_LIGHTING ;
 int GL_MODELVIEW ;
 int GL_PROJECTION ;
 int GL_SMOOTH ;
 int glClearColor (float,float,float,float) ;
 int glClearDepth (double) ;
 int glDepthFunc (int ) ;
 int glEnable (int ) ;
 int glLoadIdentity () ;
 int glMatrixMode (int ) ;
 int glShadeModel (int ) ;
 int gluPerspective (float,int,float,float) ;

GLvoid InitGL(GLsizei Width, GLsizei Height)
{

    glClearColor(0.0f, 0.0f, 0.0f, 0.0f);


    glClearDepth(1.0);


    glDepthFunc(GL_LESS);


    glEnable(GL_DEPTH_TEST);


    glShadeModel(GL_SMOOTH);


    glMatrixMode(GL_PROJECTION);


    glLoadIdentity();


    gluPerspective(45.0f, (GLfloat)Width / (GLfloat)Height, 0.1f, 100.0f);


    glMatrixMode(GL_MODELVIEW);


    BuildFont();


    glEnable(GL_LIGHT0);


    glEnable(GL_LIGHTING);


    glEnable(GL_COLOR_MATERIAL);
}
