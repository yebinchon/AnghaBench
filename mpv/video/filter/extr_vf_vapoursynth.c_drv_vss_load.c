
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int se; int out_node; int script_path; } ;
typedef int VSMap ;


 int MP_FATAL (struct priv*,char*,int ) ;
 scalar_t__ vsscript_evaluateFile (int *,int ,int ) ;
 int vsscript_getError (int ) ;
 int vsscript_getOutput (int ,int ) ;
 int vsscript_setVariable (int ,int *) ;

__attribute__((used)) static int drv_vss_load(struct priv *p, VSMap *vars)
{
    vsscript_setVariable(p->se, vars);

    if (vsscript_evaluateFile(&p->se, p->script_path, 0)) {
        MP_FATAL(p, "Script evaluation failed:\n%s\n", vsscript_getError(p->se));
        return -1;
    }
    p->out_node = vsscript_getOutput(p->se, 0);
    return 0;
}
